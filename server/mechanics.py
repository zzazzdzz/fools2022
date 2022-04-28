import time
import random
import json
import hashlib

import logger
from config import SECRET_KEY

BASE_TIME = 1648080000

TAG = "Mechanics"

yeets = []
try:
    with open("yeets.json", "r") as f:
        yeets = json.load(f)
except:
    logger.log(TAG, "generating fresh set of yeets")
    arr = [0, 1, 2, 3, 4]
    for i in range(0, 100):
        random.shuffle(arr)
        yeets += arr
    with open("yeets.json", "w") as f:
        json.dump(yeets, f)

def get_current_yeet():
    return yeets[get_current_yeet_session_id() % len(yeets)]

def get_current_yeet_session_id():
    return (int(time.time()) - BASE_TIME) // (4 * 60 * 60)

def get_current_yeet_name():
    return (
        "BE BOULDER ABOUT IT",
        "SLIDE FREELY EVERYWHERE",
        "PUZZLING DELIRIANS",
        "YEETORDLE",
        "OUT OF SIGHT OUT OF MIND"
    )[get_current_yeet()]

def get_yeetordle_word():
    yeetordle_words = [
        'cigar', 'rebut', 'blush', 'focal', 'dwarf', 'model', 'stink', 'grade', 
        'quiet', 'bench', 'feign', 'major', 'death', 'fresh', 'crust', 'react', 
        'pride', 'helix', 'croak', 'unfed', 'whelp', 'trawl', 'adobe', 'crazy', 
        'sower', 'repay', 'crate', 'spike', 'pound', 'unmet', 'flesh', 'forth', 
        'first', 'stand', 'ivory', 'print', 'yearn', 'drain', 'panel', 'flume', 
        'swirl', 'argue', 'delta', 'flick', 'front', 'shrub', 'biome', 'goner', 
        'golem', 'lusty', 'round', 'audit', 'lying', 'labor', 'islet', 'forge', 
        'corny', 'moult', 'basic', 'spicy', 'spray', 'fjord', 'spend', 'guild', 
        'alone', 'hyper', 'thumb', 'dowry', 'ought', 'belch', 'dutch', 'pilot', 
        'comet', 'jaunt', 'growl', 'fling', 'dozen', 'world', 'great', 'blurt', 
        'coast', 'duchy', 'groin', 'fixer', 'group', 'rogue', 'badly', 'smart', 
        'pithy', 'gaudy', 'heron', 'vodka', 'finer', 'radio', 'rouge', 'perch', 
        'retch', 'wrote', 'tilde', 'store', 'prove', 'bring', 'solve', 'cheat', 
        'grime', 'exult', 'usher', 'epoch', 'triad', 'break', 'rhino', 'viral', 
        'sonic', 'vital', 'trace', 'using', 'peach', 'champ', 'baton', 'brake', 
        'pluck', 'craze', 'gripe', 'weary', 'picky', 'acute', 'aside', 'tapir', 
        'unify', 'rebus', 'tiger', 'slump', 'crank', 'query', 'drink', 'favor', 
        'tangy', 'panic', 'solar', 'shire', 'proxy', 'point', 'prick', 'wince', 
        'crimp', 'sugar', 'whack', 'mount', 'perky', 'could', 'wrung', 'light', 
        'those', 'moist', 'shard', 'pleat', 'aloft', 'frame', 'humor', 'pause', 
        'ulcer', 'ultra', 'robin', 'caulk', 'shake', 'other', 'thorn', 'trove', 
        'bloke', 'chant', 'choke', 'nasty', 'mourn', 'brine', 'cloth', 'hoard', 
        'month', 'lapse', 'watch', 'today', 'focus', 'smelt', 'cater', 'movie', 
        'saute', 'their', 'purge', 'chest', 'depot', 'epoxy', 'nymph', 'found', 
        'stove', 'snout', 'trope', 'shawl', 'foray', 'scare', 'stair', 'black', 
        'squad', 'royal', 'chunk', 'mince', 'shame', 'ample', 'flair', 'foyer', 
        'cargo', 'oxide', 'plant', 'olive', 'inert', 'askew', 'heist', 'shown', 
        'zesty', 'trash', 'story', 'hairy', 'train', 'homer', 'badge', 'midst', 
        'fetus', 'butch', 'farce', 'slung', 'tipsy', 'metal', 'yield', 'being', 
        'scour', 'gamer', 'scrap', 'money', 'hinge', 'album', 'vouch', 'crept', 
        'bayou', 'manor', 'creak', 'showy', 'phase', 'froth', 'depth', 'girth', 
        'piety', 'float', 'atone', 'primo', 'apron', 'blown', 'loser', 'input', 
        'gloat', 'awful', 'brink', 'smite', 'beady', 'rusty', 'gawky', 'pinto', 
        'field', 'flack', 'voice', 'stead', 'stalk', 'berth', 'night', 'bland', 
        'liver', 'wacky', 'flock', 'angry', 'aphid', 'midge', 'power', 'stomp', 
        'upset', 'cramp', 'quart', 'youth', 'rhyme', 'alien', 'smear', 'unfit', 
        'cling', 'glean', 'hunky', 'poker', 'gruel', 'twice', 'twang', 'shrug', 
        'waste', 'merit', 'woven', 'clown', 'irony', 'gauze', 'chief', 'onset', 
        'prize', 'fungi', 'charm', 'inter', 'lofty', 'thyme', 'doubt', 'chute', 
        'stick', 'trice', 'alike', 'recap', 'saint', 'glory', 'grate', 'admit', 
        'brisk', 'scald', 'scorn', 'twine', 'sting', 'bough', 'marsh', 'sloth', 
        'vigor', 'howdy', 'enjoy', 'valid', 'equal', 'spade', 'stein', 'exist', 
        'quirk', 'denim', 'grove', 'spiel', 'fault', 'flout', 'sneak', 'waltz', 
        'aptly', 'piney', 'inept', 'aloud', 'dream', 'stale', 'unite', 'snarl', 
        'baker', 'glyph', 'louse', 'gulch', 'vault', 'godly', 'threw', 'grave', 
        'shock', 'crave', 'spite', 'skimp', 'claim', 'rainy', 'musty', 'pique', 
        'quasi', 'arise', 'valet', 'opium', 'avert', 'stuck', 'recut', 'mulch', 
        'plume', 'rifle', 'count', 'incur', 'wrest', 'mocha', 'study', 'lover', 
        'safer', 'rivet', 'smoke', 'mound', 'sedan', 'swine', 'guile', 'gusty', 
        'equip', 'tough', 'canoe', 'chaos', 'covet', 'human', 'lunch', 'blast', 
        'stray', 'lefty', 'quick', 'paste', 'given', 'risen', 'groan', 'leaky', 
        'grind', 'carve', 'sadly', 'spilt', 'slack', 'honey', 'final', 'minty'
    ]
    return random.choice(yeetordle_words).upper()

def get_yeet_start_time():
    yeet_cycles = (int(time.time()) - BASE_TIME) // (4 * 60 * 60)
    yeet_start = BASE_TIME + 4 * 60 * 60
    return yeet_start

def get_lottery_data():
    lottery_cycles = (int(time.time()) - BASE_TIME) // (3 * 60 * 60)
    h = hashlib.sha1(
        b"lottery-%s-%i" % (SECRET_KEY, lottery_cycles)
    ).hexdigest()
    rnd = random.Random(int(h[0:7], 16))
    letters = list("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    rnd.shuffle(letters)
    return tuple(letters[0:5])

def warp(x, y, map_id, d='d'):
    if d == 'u':
        x |= 0x80
    if d == 'l':
        y |= 0x80
    if d == 'r':
        x |= 0x80
        y |= 0x80
    return bytes([
        map_id % 256, map_id // 256,
        x, y
    ])
