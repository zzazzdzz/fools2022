import base64

with open('save.sav', 'rb') as f:
    data = base64.b64encode(f.read())

with open('save.js', 'wb') as f:
    f.write(b'localStorage["IodineGBA_SAVE_GUID_BPEE01\\x96"]=\'')
    f.write(b'"')
    f.write(data)
    f.write(b'"')
    f.write(b"';localStorage['IodineGBA_SAVE_TYPE_GUID_BPEE01\\x96']='\"Ag==\"';")