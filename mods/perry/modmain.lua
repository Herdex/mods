PrefabFiles = {
	"perry",
	"perry_none",
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/perry.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/perry.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/perry.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/perry.xml" ),
	
    Asset( "IMAGE", "images/selectscreen_portraits/perry_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/perry_silho.xml" ),

    Asset( "IMAGE", "bigportraits/perry.tex" ),
    Asset( "ATLAS", "bigportraits/perry.xml" ),
	
	Asset( "IMAGE", "images/map_icons/perry.tex" ),
	Asset( "ATLAS", "images/map_icons/perry.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_perry.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_perry.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_perry.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_perry.xml" ),
	
	Asset( "IMAGE", "images/avatars/self_inspect_perry.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_perry.xml" ),
	
	Asset( "IMAGE", "images/names_perry.tex" ),
    Asset( "ATLAS", "images/names_perry.xml" ),
	
	Asset( "IMAGE", "images/names_gold_perry.tex" ),
    Asset( "ATLAS", "images/names_gold_perry.xml" ),
}

AddMinimapAtlas("images/map_icons/perry.xml")

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS

-- The character select screen lines
STRINGS.CHARACTER_TITLES.perry = "The Coolest One"
STRINGS.CHARACTER_NAMES.perry = "Perry"
STRINGS.CHARACTER_DESCRIPTIONS.perry = "*Perk 1\n*Perk 2\n*Perk 3"
STRINGS.CHARACTER_QUOTES.perry = "\"Quote\""
STRINGS.CHARACTER_SURVIVABILITY.perry = "Slim"

-- Custom speech strings
STRINGS.CHARACTERS.PERRY = require "speech_perry"

-- The character's name as appears in-game 
STRINGS.NAMES.PERRY = "Perry"
STRINGS.SKIN_NAMES.perry_none = "Perry"

-- The skins shown in the cycle view window on the character select screen.
-- A good place to see what you can put in here is in skinutils.lua, in the function GetSkinModes
local skin_modes = {
    { 
        type = "ghost_skin",
        anim_bank = "ghost",
        idle_anim = "idle", 
        scale = 0.75, 
        offset = { 0, -25 } 
    },
}

-- Add mod character to mod character list. Also specify a gender. Possible genders are MALE, FEMALE, ROBOT, NEUTRAL, and PLURAL.
AddModCharacter("perry", "FEMALE", skin_modes)
