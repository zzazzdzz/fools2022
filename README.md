# fools2022

[TheZZAZZGlitch's April Fools Event 2022](https://zzazzdzz.github.io/fools2022/).

Note: Everything here is kept only for historical record. Any bugs and issues will not be resolved. Fork the repository if you wish to build something on top of it.

# Setup instructions

## The save file and map data

To compile the save file and maps, you'll need the following:

- GNU ARM binutils installed, more exactly *arm-none-eabi-as*, *arm-none-eabi-objcopy* and *arm-none-eabi-objdump* (on Ubuntu, you can get them with *apt install gcc-arm-none-eabi*, which will install all necessary packages in one go).
- Python 3 installed and available in PATH as *python3* (on Ubuntu, you can just *apt install python3*).
- A working C++ compiler to compile the template preprocessor, along with GNU build tools, most notably *make* (on Ubuntu, if you want to go with GCC, *apt install build-essential g++*).

Let's begin! After cloning the repository, place yourself in the *tools/preproc* directory:

```
cd tools/preproc
```

Compile the template preprocessor, which was definitely not stolen from the [pokeemerald](https://github.com/pret/pokeemerald/) project:

```
make
```

Go back to the main directory:

```
cd ../..
```

Compile the save file:

```
make
```

This process might take several minutes, depending on your machine. Dearly hope that nothing blows up. At the end, you should have your *save.sav* and *save.js* files. The first one is just a standard save. The second one is the same save data, wrapped around for use with the online client. You'll also get a set of compiled maps in the *maps/* directory.

## The server

To get the server running, you'll need the following:

- Python 3 installed and available in PATH as *python3*. You probably have that one, since it was required for compiling save data.
- *wsgiserver* and *pycrypto* modules installed (get them with *python3 -m pip install wsgiserver pycrypto*)

Run `python3 main.py` in the *server/* directory; it will start the backend server on 127.0.0.1:6937. You can try going to http://127.0.0.1:6937/ping to see it working.

If you only want to run the server on localhost, that should be enough. However, if you want to set up a public server, you'll need to keep some things in mind:

- Go through the *config.py* file and set reasonable values for all of the settings - most importantly, make sure to change your cryptographic secrets from the default "X".
- The first registered user (with UID 1) will automatically become an admin. You should make your first account *before* making the server public.
- The backend only listens on localhost by default, and you need to make it world-reachable. The recommended way is to set up whatever web server you want as a reverse proxy - the official event site used [nginx](http://nginx.org/).
- Make sure that the event server process is managed in some way (runs in background, will be restarted if it dies, does not run with root privileges, etc.) - for that, the official event site used [supervisor](http://supervisord.org/).

## The event site

The event site (in *site/*) is just a bunch of static HTML, so it can be hosted however you want - there's no special requirements. You can quickly spin up a development HTTP server with Python: `python3 -m http.server`.

If you're just testing on localhost, it should work out of the box. But if you want to set up a public server:

- Change the *API_SERVER* variable in *script.js* to match your server configuration.
- If you made any changes within the save file, replace the *save.js* and *assets/fools2022.sav* files with the files you built.

## The client

The game client is a Python application with no additional dependencies. Run it with `python3 main.py` in the *client/* directory.

Again, if you're testing on localhost, it should just work. If you want to set up a public server:

- Change the *server_addr* variable in *request.py* to match your configuration.
- If you intend to release the client to other people, making it into a standalone executable could be useful. I tried using [Nuitka](https://nuitka.net/) first with excellent results, only to find out that [antivirus software didn't like the executables it produces](https://www.virustotal.com/gui/file/a53671178edc018ce57ef0aed5ab3c9983931361fc42593b9a4b0b13a53a43c8/detection). Therefore I switched to [py2exe](https://www.py2exe.org/), which had a lot more problems, but mostly got the job done. You can use any of these methods to produce an executable, depending on your usecase - for your reference, a sample py2exe compilation script is included in *py2exe_make.py*, while a sample Nuitka command line is included in *cmdline.txt*.

## Development tools

This source code release includes some tools used during development, which could help you with making changes to the project. They are not thoroughly explained, under the assumption that if you're making modifications to the project, you likely know what you're doing already.

- Maps were created using the excellent [pokeemerald decompilation](https://github.com/pret/pokeemerald/) and the [porymap map editor](https://github.com/huderlem/porymap). Remapping and redesigning of fools2018 maps was kickstarted with an automatic conversion script, which can be found in *tools/18to22.py*.
- Original map files that were used to generate compiled maps can be found in *tools/mapfiles/*. Note, the *scripts.inc* files are decoys, and are only necessary for porymap to stop complaining; actual, real map scripts are found under *scripts/*.
- To compile a map, use the *tools/map_compiler.py" script, which will take map data from a repository in *pokeemerald/* and convert it to an assembly file under *maps/*.
- There are a few convenience scripts as well, like *map_copy.py* and *map_true_copy.py* for cloning maps, *map_all_compiler.py* which creates all map assembly files in one go, *connect_maps.py* for easier creation of map connections... look through the folder and see what you can find!
- Development mostly happened on Windows. Therefore, source code modifications might be necessary for the tools to function under objectively superior operating systems.

## Bepis 2.0

Just like 2018, there are some unused maps. Not gonna lie, I intentionally left them intact, to fully replicate that 2018 "bepis map" experience. This source code release may or may not include them, I haven't really checked. Have fun.