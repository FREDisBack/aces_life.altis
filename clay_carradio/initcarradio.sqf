private ["_userPlaylist", "_keyPlay", "_keyNext", "_keyPre", "_keyVolUp", "_keyVolDown", "_CLAY_CarRadio_KeyPressed"];

sleep 0.22;
#include "userconfig\CLAY_CarRadio\CLAY_CarRadio.hpp";

CLAY_CarRadio_UserPlaylist = _userPlaylist;

CLAY_CarRadio_KeyPlay    = _keyPlay;
CLAY_CarRadio_KeyNext    = _keyNext;
CLAY_CarRadio_KeyPre     = _keyPre;
CLAY_CarRadio_KeyVolUp   = _keyVolUp;
CLAY_CarRadio_KeyVolDown = _keyVolDown;

CLAY_CarRadio_KeyPressedCode = compile preprocessFile "CLAY_CarRadio\scripts\key.sqf";
_CLAY_CarRadio_KeyPressed = (findDisplay 46) displayAddEventHandler ["KeyDown", "_this call CLAY_CarRadio_KeyPressedCode"];

If (isNil "CLAY_RadioAddMusic") Then {CLAY_RadioAddMusic = []};
If (isNil "CLAY_RadioAddVehicles") Then {CLAY_RadioAddVehicles = []};
If (isNil "CLAY_RadioNoVehicles") Then {CLAY_RadioNoVehicles = []};
If (isNil "CLAY_RadioShowTooltips") Then {CLAY_RadioShowTooltips = true};

_trigger1 = createTrigger ["EmptyDetector", [0,0,0]];
_trigger1 setTriggerArea [0, 0, 0, false];
_trigger1 setTriggerActivation ["NONE", "PRESENT", true];
//_trigger1 setTriggerStatements ["(('Car' countType [(vehicle player)] > 0) || (typeOf (vehicle player) in CLAY_RadioAddVehicles)) && !(typeOf (vehicle player) in CLAY_RadioNoVehicles) && playerSide == civilian", "CLAY_RadioVeh = vehicle player; CLAY_ID_RADIO = CLAY_RadioVeh addAction ['radio','CLAY_CarRadio\scripts\radio.sqf'];", "CLAY_RadioEndTimer = true; CLAY_RadioPlaying = false; playMusic ''; CLAY_RadioVeh removeAction CLAY_ID_RADIO; CLAY_RadioVeh = nil;"];

//LEH ПРАВКИ РАДИО И ДЛЯ КОПА
_trigger1 setTriggerStatements ["(('Car' countType [(vehicle player)] > 0) || (typeOf (vehicle player) in CLAY_RadioAddVehicles)) && !(typeOf (vehicle player) in CLAY_RadioNoVehicles)", "CLAY_RadioVeh = vehicle player; CLAY_ID_RADIO = CLAY_RadioVeh addAction ['Car Radio','CLAY_CarRadio\scripts\radio.sqf'];", "CLAY_RadioEndTimer = true; CLAY_RadioPlaying = false; playMusic ''; CLAY_RadioVeh removeAction CLAY_ID_RADIO; CLAY_RadioVeh = nil;"];

CLAY_RadioAddMusic = [];
CLAY_RadioPlaying = false;
CLAY_RadioEndTimer = true;

CLAY_RadioGameMusic = 
[
    ["hghwthll", "AC⁄DC – Highway to Hell", 214],
    ["lbtrz", "AronChupa – I'm an Albatraoz", 269],
    ["hsfrsngsn", "The Animals – House of Rising Sun", 266],
    ["balive", "Avenged Sevenfold – Buried Alive", 405],
    ["cmnghm", "Avenged Sevenfold – Coming Home", 387],
    ["bdtch", "Bloodhound Gang – The Bad Touch", 266],
    ["scrwng", "Bloodhound Gang – Screwing You On The Beach At Night", 225],
    ["hntss", "Bloodhound Gang – Uhn Tiss Uhn Tiss Uhn Tiss", 265],
    ["rdamfr", "Blue Stahli – Ready Aim Fire", 185],
    ["tkdwn", "Blue Stahli – Takedown", 176],
    ["magic", "Coldplay – Magic", 286],
    ["prds", "Coldplay – Paradise (feat. Rihanna)", 278],
    ["htfrmbng", "Cypress Hill – Hit From The Bong", 168],
    ["ndabrk", "Dashdot – Need A Break (Original Mix)", 393],
    ["ckthmpr", "Die Antwoord – Cookie Thumper!", 205],
    ["fnkfrk", "Die Antwoord – I Fink U Freeky", 283],
    ["rchbtch", "Die Antwoord – Rich Bitch", 215],
    ["brzrk", "Eminem – Berzerk", 239],
    ["mnstr", "Eminem – Monster (feat. Rihanna)", 251],
    ["anaesthetist", "Enter Shikari – Anaesthetist", 176],
    ["novocaine", "Fall Out Boy – Novocaine", 227],
    ["ymm", "FatBoy Slim – Ya Mama (Push The Tempo)", 339],
    ["evileye", "Franz Ferdinand – Evil Eye", 168],
    ["tkmt", "Franz Ferdinand – Take Me Out", 238],
    ["cryin", "Godsmack – Cryin' Like a Bitch", 204],
    ["remday", "God Is An Astronaut – Remembrance Day", 257],
    ["klldj", "Green Day – Kill the DJ", 222],
    ["vvglr", "Green Day – Viva La Gloria (Little Girl)", 228],
    ["gzzl", "Hollywood Undead – Guzzle, Guzzle", 220],
    ["roll", "Hollywood Undead – How We Roll", 283],
    ["ptbmslf", "Hollywood Undead – Party By Myself", 251],
    ["dsrfrgttn", "Kasabian – Days Are Forgotten", 245],
    ["onout", "The Killers – From Here On Out", 151],
    ["hmn", "The Killers – Human", 246],
    ["shdwpl", "The Killers – Shadowplay", 248],
    ["wnlvbrks", "Led Zeppelin – When The Levee Breaks", 427],
    ["crwlng", "Linkin Park – Crawling", 209],
    ["frgtn", "Linkin Park – Forgotten", 195],
    ["nbdslstng", "Linkin Park – Nobody's Listening", 179],
    ["war", "Linkin Park – War", 132],
    ["hrdrckhlllj", "Lordi – Hard Rock Hallelujah", 248],
    ["kbmkbm", "Marilyn Manson – Ka-boom Ka-boom", 243],
    ["psycho", "Muse – Psycho", 321],
    ["smllslktnsprt", "Nirvana – Smells Like Teen Spirit", 302],
    ["lws", "Panic! At The Disco – Always", 154],
    ["wrtsns", "Panic! At The Disco – I Write Sins Not Tragedies", 187],
    ["mrgnc", "Papa Roach – State Of Emergency", 307],
    ["rdstdgo", "Paul Oakenfold – Ready Steady Go", 254],
    ["mds", "Placebo – Meds (feat. Alison Mosshart)", 176],
    ["stndp", "The Prodigy – Stand Up", 326],
    ["dhst", "Rammstein – Du hast", 238],
    ["svntyrs", "Ratatat – Seventeen Years", 267],
    ["cantstp", "Red Hot Chili Peppers – Can't Stop", 270],
    ["snw", "Red Hot Chili Peppers – Snow", 335],
    ["cllddrk", "Snow Patrol – Called Out In The Dark", 242],
    ["beats", "Skrillex & Diplo – Beats Knockin' (feat. Fly Boi Keno)", 174],
    ["blitz", "Sweet – Ballroom Blitz", 242],
    ["arls", "System of a Down – Aerials", 236],
    ["txct", "System of a Down – Toxicity", 223],
    ["prngrph", "System of a Down – Violent Pornography", 212],
    ["volcano", "U2 – Volcano", 195],
    ["kavkaz", "Армянская – Слева горы, справа горы, а вдали Кавказ", 137],
    ["nebo", "Ленинград – Мне бы в небо", 217],
    ["cptl", "Ляпис Трубецкой – Капитал", 201]
];

CLAY_RadioGameMusicOA = 
[

];


If (count CLAY_CarRadio_UserPlaylist > 0) Then
{
    CLAY_RadioCustomMusic = CLAY_CarRadio_UserPlaylist;
}
Else
{
    CLAY_RadioCustomMusic = [];
};

CLAY_RadioPlayList = CLAY_RadioGameMusic;

CLAY_RadioTrack = 0;
CLAY_RadioVol = 0.5;
CLAY_RadioVolStep = 10;

CLAY_RadioSrc = 1;
CLAY_RadioRepeat = false;
CLAY_RadioRandom = false;
CLAY_RadioKeyColor = 1;
CLAY_RadioDisplay = 9;
CLAY_RadioColor = "Black";
