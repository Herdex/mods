PrefabFiles = {
	"fern",
	"fern_none",
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/fern.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/fern.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/fern.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/fern.xml" ),
	
    Asset( "IMAGE", "images/selectscreen_portraits/fern_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/fern_silho.xml" ),

    Asset( "IMAGE", "bigportraits/fern.tex" ),
    Asset( "ATLAS", "bigportraits/fern.xml" ),
	
	Asset( "IMAGE", "images/map_icons/fern.tex" ),
	Asset( "ATLAS", "images/map_icons/fern.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_fern.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_fern.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_fern.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_fern.xml" ),
	
	Asset( "IMAGE", "images/avatars/self_inspect_fern.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_fern.xml" ),
	
	Asset( "IMAGE", "images/names_fern.tex" ),
    Asset( "ATLAS", "images/names_fern.xml" ),
	
	Asset( "IMAGE", "images/names_gold_fern.tex" ),
    Asset( "ATLAS", "images/names_gold_fern.xml" ),
}

AddMinimapAtlas("images/map_icons/fern.xml")

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS

-- The character select screen lines
STRINGS.CHARACTER_TITLES.fern = "The Sample Character"
STRINGS.CHARACTER_NAMES.fern = "Perry"
STRINGS.CHARACTER_DESCRIPTIONS.fern = "*Perk 1\n*Perk 2\n*Perk 3"
STRINGS.CHARACTER_QUOTES.fern = "\"Quote\""
STRINGS.CHARACTER_SURVIVABILITY.fern = "Slim"

-- Custom speech strings
STRINGS.CHARACTERS.FERN = require "speech_fern"

-- The character's name as appears in-game 
STRINGS.NAMES.FERN = "Fern"
STRINGS.SKIN_NAMES.fern_none = "Fern"

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
AddModCharacter("fern", "FEMALE", skin_modes)
