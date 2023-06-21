local assets =
{
	Asset( "ANIM", "anim/indi.zip" ),
	Asset( "ANIM", "anim/ghost_indi_build.zip" ),
}

local skins =
{
	normal_skin = "indi",
	ghost_skin = "ghost_indi_build",
}

return CreatePrefabSkin("indi_none",
{
	base_prefab = "indi",
	type = "base",
	assets = assets,
	skins = skins, 
	skin_tags = {"PERRY", "CHARACTER", "BASE"},
	build_name_override = "indi",
	rarity = "Character",
})
