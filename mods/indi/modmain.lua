PrefabFiles = {
	"indi",
	"indi_none",
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/indi.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/indi.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/indi.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/indi.xml" ),
	
    Asset( "IMAGE", "images/selectscreen_portraits/indi_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/indi_silho.xml" ),

    Asset( "IMAGE", "bigportraits/indi.tex" ),
    Asset( "ATLAS", "bigportraits/indi.xml" ),
	
	Asset( "IMAGE", "images/map_icons/indi.tex" ),
	Asset( "ATLAS", "images/map_icons/indi.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_indi.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_indi.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_indi.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_indi.xml" ),
	
	Asset( "IMAGE", "images/avatars/self_inspect_indi.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_indi.xml" ),
	
	Asset( "IMAGE", "images/names_indi.tex" ),
    Asset( "ATLAS", "images/names_indi.xml" ),
	
	Asset( "IMAGE", "images/names_gold_indi.tex" ),
    Asset( "ATLAS", "images/names_gold_indi.xml" ),
}

AddMinimapAtlas("images/map_icons/indi.xml")

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS

-- The character select screen lines
STRINGS.CHARACTER_TITLES.indi = "The Goober"
STRINGS.CHARACTER_NAMES.indi = "Indi"
STRINGS.CHARACTER_DESCRIPTIONS.indi = "*Perk 1\n*Perk 2\n*Perk 3"
STRINGS.CHARACTER_QUOTES.indi = "\"Quote\""
STRINGS.CHARACTER_SURVIVABILITY.indi = "Slim"

-- Custom speech strings
STRINGS.CHARACTERS.INDI = require "speech_indi"

-- The character's name as appears in-game 
STRINGS.NAMES.INDI = "Indi"
STRINGS.SKIN_NAMES.indi_none = "Indi"

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
AddModCharacter("indi", "MALE", skin_modes)
