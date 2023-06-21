local assets =
{
	Asset( "ANIM", "anim/perry.zip" ),
	Asset( "ANIM", "anim/ghost_perry_build.zip" ),
}

local skins =
{
	normal_skin = "perry",
	ghost_skin = "ghost_perry_build",
}

return CreatePrefabSkin("perry_none",
{
	base_prefab = "perry",
	type = "base",
	assets = assets,
	skins = skins, 
	skin_tags = {"PERRY", "CHARACTER", "BASE"},
	build_name_override = "perry",
	rarity = "Character",
})
