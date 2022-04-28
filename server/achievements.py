import time

import util
import datastore
from flags import *

def get_titles_and_achievements(player_data):
    achievements = []
    titles = ["New Adventurer"]
    completionist = 0
    score = 0
    # Exploration I: There was an attempt
    if '0100' in player_data['visited_maps']:
        achievements.append("exploration1")
        score += 10
    # Exploration II: Starting out
    if len(player_data['visited_maps']) >= 20:
        achievements.append("exploration2")
        titles.append("Rookie Explorer")
        score += 20
    # Exploration III: Taste of adventure
    if len(player_data['visited_maps']) >= 60:
        achievements.append("exploration3")
        titles.append("Experienced Explorer")
        score += 30
    # Exploration IV: Expert
    if len(player_data['visited_maps']) >= 120:
        achievements.append("exploration4")
        titles.append("Exploration Prodigy")
        score += 40
    # To the North!
    if '1927' in player_data['visited_maps']:
        achievements.append("northernedge")
        completionist += 1
        score += 30
    # To the South!
    if '4f21' in player_data['visited_maps']:
        achievements.append("southernedge")
        completionist += 1
        score += 30
    # To the West!
    if '2d27' in player_data['visited_maps']:
        achievements.append("westernedge")
        completionist += 1
        score += 30
    # To the East!
    if '3c36' in player_data['visited_maps']:
        achievements.append("easternedge")
        completionist += 1
        score += 30
    # Feels Different
    if '1730' in player_data['visited_maps']:
        if '1731' in player_data['visited_maps']:
            if '1732' in player_data['visited_maps']:
                achievements.append("alterations")
                titles.append("Shapeshifter")
                completionist += 1
                score += 40
    # Not lost anymore
    if '3b30' in player_data['visited_maps']:
        if '3b31' in player_data['visited_maps']:
            if '3b32' in player_data['visited_maps']:
                achievements.append("lostwoods")
                titles.append("Pathfinder")
                completionist += 1
                score += 40
    # Delirium achieved
    if '1f3a' in player_data['visited_maps']:
        achievements.append("deliria")
        completionist += 1
        score += 20
    # Field of Koopers 5
    if util.checkflag(player_data['state'], FLAG_DESIGNER_CREATION):
        achievements.append("designer")
        completionist += 1
        score += 20
    # Depth First Search
    if util.checkflag(player_data['state'], FLAG_BINARY_WOODS_CLEARING):
        achievements.append("binarywoods")
        completionist += 1
        score += 20
    # It's very hot in the lab
    if util.checkflag(player_data['state'], FLAG_DELIVERED_MICROSCOPIC_THINGS):
        achievements.append("tnetennba")
        completionist += 1
        score += 30
    # The best Pokemon
    if util.checkflag(player_data['state'], FLAG_DUNSPARCE_SURVEY):
        achievements.append("survey")
        completionist += 1
        score += 20
    # Reunited
    if '0364' in player_data['visited_maps']:
        achievements.append("reunited")
        completionist += 1
        score += 20
    # Demisemihemidemisemiquaver
    if util.checkflag(player_data['state'], FLAG_FLUTE_RETURNED):
        achievements.append("flute")
        completionist += 1
        score += 30
    # Overhead view is cheating
    if util.checkflag(player_data['state'], FLAG_HIDDEN_RETREAT):
        achievements.append("hiddenretreat")
        completionist += 1
        score += 20
    # Yet Another Secret
    if util.checkflag(player_data['state'], FLAG_YET_ANOTHER_SECRET):
        achievements.append("yetanothersecret")
        completionist += 1
        score += 20
    # Recursive Madness
    if util.checkflag(player_data['state'], FLAG_OBSCURED_PATH):
        achievements.append("recursion")
        completionist += 1
        score += 20
    # All praise the Helix
    if util.checkflag(player_data['state'], FLAG_UNDERGROUND_CAVE_HELIX):
        achievements.append("helix")
        completionist += 1
        score += 20
    # Filthy Dome worshipper
    if util.checkflag(player_data['state'], FLAG_ALTERING_CAVE_DOME):
        achievements.append("dome")
        completionist += 1
        score += 20
    # Guys I'm still here
    if util.checkflag(player_data['state'], FLAG_TINY_CAVERN_AMBER):
        achievements.append("amber")
        completionist += 1
        score += 20
    # In the name of science
    if util.checkflag(player_data['state'], FLAG_TOOK_FOSSILS):
        achievements.append("tookfossils")
        titles.append("Glitch Scientist")
        completionist += 1
        score += 30
    # ---
    num_balls = 0
    if util.checkflag(player_data['state'], FLAG_GIVEN_BALL1): num_balls += 1
    if util.checkflag(player_data['state'], FLAG_GIVEN_BALL2): num_balls += 1
    if util.checkflag(player_data['state'], FLAG_GIVEN_BALL3): num_balls += 1
    if util.checkflag(player_data['state'], FLAG_GIVEN_BALL4): num_balls += 1
    if util.checkflag(player_data['state'], FLAG_GIVEN_BALL5): num_balls += 1
    if util.checkflag(player_data['state'], FLAG_GIVEN_BALL6): num_balls += 1
    if util.checkflag(player_data['state'], FLAG_GIVEN_BALL7): num_balls += 1
    if util.checkflag(player_data['state'], FLAG_GIVEN_BALL8): num_balls += 1
    if util.checkflag(player_data['state'], FLAG_GIVEN_BALL9): num_balls += 1
    # ---
    # Balls I: Growing a pair
    if num_balls >= 2:
        achievements.append("balls1")
        completionist += 1
        score += 20
    # Balls II: Growing two pairs
    if num_balls >= 4:
        achievements.append("balls2")
        completionist += 1
        score += 30
    # Balls III: The ball craze
    if num_balls >= 6:
        achievements.append("balls3")
        completionist += 1
        score += 30
    # Balls IV: Sky is the limit
    if num_balls >= 9:
        achievements.append("balls4")
        titles.append("Mr. Balls")
        completionist += 1
        score += 40
    # Okay Folks
    if util.checkflag(player_data['state'], FLAG_MANSION_GOT_SCALE):
        achievements.append("mansion")
        completionist += 1
        score += 20
    # Hack and Slash
    if util.checkflag(player_data['state'], FLAG_GRASSLANDS_TREES):
        achievements.append("trees")
        completionist += 1
        score += 20
    # RYDEL RYDEL RYDEL RYDEL
    if util.checkflag(player_data['state'], FLAG_RECEIVED_BIKE):
        achievements.append("bike")
        completionist += 1
        score += 20
    # Interjection
    if util.checkflag(player_data['state'], FLAG_GNU_INTERJECTION):
        achievements.append("interjection")
        titles.append("Arch Linux Enjoyer")
        completionist += 1
        score += 30
    # Femboy Supremacy
    if util.checkflag(player_data['state'], FLAG_RECEIVED_BALL7):
        achievements.append("femboy")
        titles.append("Astolfo Worshipper")
        completionist += 1
        score += 40
    # Braille Happens
    if util.checkflag(player_data['state'], FLAG_RECEIVED_BALL9):
        achievements.append("relic")
        completionist += 1
        score += 40
    # Gambling I: So it begins...
    if '1a73' in player_data['visited_maps']:
        achievements.append("gambling1")
        score += 10
    # Gambling II: We have a winner!
    if util.checkflag(player_data['state'], FLAG_WON_500_COINS):
        achievements.append("gambling2")
        score += 30
    # Lottery I: Suboptimal RNG
    if player_data['lottery'] >= 1:
        achievements.append("lottery1")
        titles.append("Gambler")
        score += 30
    # Lottery II: On WR pace
    if player_data['lottery'] >= 3:
        achievements.append("lottery2")
        titles.append("Highroller")
    # Lottery III: RNG manipulation
    if player_data['lottery'] >= 5:
        achievements.append("lottery3")
        titles.append("Lucky Star")
    # YEET I: Welcome to YEET
    if '5160' in player_data['visited_maps']:
        achievements.append("yeet1")
        score += 30
    # YEET II: Enemy at the YEET
    if 'yeet_firstblood' in player_data['special_flags']:
        achievements.append("yeet2")
        titles.append("Speedrunner")
    # YEET III: Living in the YEET
    if '5133' in player_data['visited_maps']:
        if '5134' in player_data['visited_maps']:
            if '5135' in player_data['visited_maps']:
                if '5136' in player_data['visited_maps']:
                    if '5137' in player_data['visited_maps']:
                        achievements.append("yeet3")
                        titles.append("Yeet Elite")
    # Hacking I: Walking through walls
    if "cc1_clear" in player_data['special_flags']:
        achievements.append("cc1")
        titles.append("Script Kiddie")
        score += 40
    # Hacking II: Going places
    if "cc2_clear" in player_data['special_flags']:
        achievements.append("cc2")
        titles.append("Penetration Tester")
        score += 60
    # Hacking III: Scripting
    if "cc3_clear" in player_data['special_flags']:
        achievements.append("cc3")
        titles.append("Security Researcher")
        score += 100
    # Hacking IV: Loss of integrity
    if "cc4_clear" in player_data['special_flags']:
        achievements.append("cc4")
        score += 137
    # Try harder
    if util.checkflag(player_data['state'], FLAG_HACKER_BACKGROUND) and "cc4_clear" in player_data['special_flags']:
        achievements.append("ccall")
        titles.append("Exploitation Expert")
    # Completionist
    if completionist == 30:
        achievements.append("completion")
        titles.append("Hero of Glitchland")
    # Legendary
    if player_data['score'] >= 1337:
        achievements.append("legend")
        titles.append("Legend")
    # Wholesome
    if player_data['wholesome']:
        achievements.append("wholesome")
        titles.append("Wholesome")
        score += 1
    # Wholesome: Completionist
    if player_data['wholesome'] and completionist == 30:
        achievements.append("wholesomecompletion")
        titles.append("Wholesome Hero")
    # Wholesome: Legendary
    if player_data['wholesome'] and score >= 1337:
        achievements.append("wholesomelegend")
        titles.append("Ultimate Legend")
    return {
        "achievements": achievements,
        "titles": titles,
        "score": score,
        "updated": score > player_data['score']
    }

def update_leaderboard_record(player_data):
    # if player_data['uid'] == 1: return
    with datastore.open_datastore("leaderboard") as l:
        leaderboard = l.read()
        for i in range(0, len(leaderboard)):
            if leaderboard[i]['uid'] == player_data['uid']:
                leaderboard[i] = {
                    "username": player_data['username'],
                    "uid": player_data['uid'],
                    "score": player_data['score'],
                    "update": player_data['update'],
                    "title": player_data['title'],
                    "wholesome": player_data['wholesome']
                }
        leaderboard.sort(key=lambda x: x['update'])
        leaderboard.sort(key=lambda x: x['score'], reverse=True)
        l.write(leaderboard)

def create_leaderboard_record(player_data):
    # if player_data['uid'] == 1: return
    with datastore.open_datastore("leaderboard") as l:
        leaderboard = l.read()
        leaderboard.append({
            "username": player_data['username'],
            "uid": player_data['uid'],
            "score": player_data['score'],
            "update": player_data['update'],
            "title": player_data['title'],
            "wholesome": player_data['wholesome']
        })
        leaderboard.sort(key=lambda x: x['update'])
        leaderboard.sort(key=lambda x: x['score'], reverse=True)
        l.write(leaderboard)

def check_player_completion(player_data):
    completion = get_titles_and_achievements(player_data)
    if player_data['score'] == -1:
        create_leaderboard_record(player_data)
    player_data['achievements'] = completion['achievements']
    player_data['titles'] = completion['titles']
    player_data['score'] = completion['score']
    if completion['updated']:
        player_data['update'] = int(time.time())
        update_leaderboard_record(player_data)
