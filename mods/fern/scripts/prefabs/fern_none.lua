local assets =
{
	Asset( "ANIM", "anim/fern.zip" ),
	Asset( "ANIM", "anim/ghost_fern_build.zip" ),
}

local skins =
{
	normal_skin = "fern",
	ghost_skin = "ghost_fern_build",
}

return CreatePrefabSkin("fern_none",
{
	base_prefab = "fern",
	type = "base",
	assets = assets,
	skins = skins, 
	skin_tags = {"FERN", "CHARACTER", "BASE"},
	build_name_override = "fern",
	rarity = "Character",
})
