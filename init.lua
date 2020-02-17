



--
-- Registering Craftitems
--
	-- emerald
minetest.register_craftitem("mores:emerald", {
 	description = "Emerald",
 	inventory_image = "mores_emerald.png",
 })
	-- amethyst
minetest.register_craftitem("mores:amethyst", {
	description = "Amethyst",
	inventory_image = "mores_amethyst.png",
})
	-- azurite
minetest.register_craftitem("mores:azurite", {
	description = "Azurite",
	inventory_image = "mores_azurite.png"
})






---
--- Registering Nodes
---

	-- emerald ore
minetest.register_node("mores:stone_with_emerald", {
	description = "Emerald Ore",
	tiles = {"default_stone.png^mores_emerald_ore.png"},
	groups = {cracky = 1},
	drop = "mores:emerald",
	sounds = default.node_sound_stone_defaults(),
})
	-- emerald block
minetest.register_node("mores:emerald_block", {
	description = "Emerald Block",
	tiles = {"mores_emerald_block.png"},
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
})

	-- amethyst ore
minetest.register_node("mores:stone_with_amethyst", {
	description = "Amethyst Ore",
	tiles = {"default_stone.png^mores_amethyst_ore.png"},
	groups = {cracky = 2},
	drop = "mores:amethyst"
})

 	-- amethyst block
minetest.register_node("mores:amethyst_block", {
	description = "Amethyst Block",
	tiles = {"mores_amethyst_block.png"},
	groups = {cracky = 2},
})

	-- azurite ore
minetest.register_node("mores:stone_with_azurite", {
	description = "Azurite Ore",
	tiles = {"default_stone.png^mores_azurite_ore.png"},
	groups = {cracky = 1},
	drop = "mores:azurite"
})

	-- azurite block
minetest.register_node("mores:azurite_block", {
	description = "Azurite Block",
	tiles = {"mores_azurite_block.png"},
	groups = {cracky = 1},
})



 -- Registering ores
 minetest.register_ore({
	 ore_type       = "scatter",
	 ore            = "mores:stone_with_emerald",
	 wherein        = "default:stone",
	 clust_scarcity = 14 * 14 * 14,
	 clust_num_ores = 5,
	 clust_size     = 3,
	 y_max          = 31000,
	 y_min          = 1025,
 })

 minetest.register_ore({
	 ore_type       = "scatter",
	 ore            = "mores:stone_with_emerald",
	 wherein        = "default:stone",
	 clust_scarcity = 18 * 18 * 18,
	 clust_num_ores = 3,
	 clust_size     = 2,
	 y_max          = -64,
	 y_min          = -255,
 })

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "mores:stone_with_emerald",
	wherein        = "default:stone",
	clust_scarcity = 14 * 14 * 14,
	clust_num_ores = 5,
	clust_size     = 3,
	y_max          = -256,
	y_min          = -31000,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "mores:stone_with_azurite",
	wherein        = "default:stone",
	clust_scarcity = 9 * 9 * 9,
	clust_num_ores = 12,
	clust_size     = 3,
	y_max          = 31000,
	y_min          = 1025,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "mores:stone_with_azurite",
	wherein        = "default:stone",
	clust_scarcity = 7 * 7 * 7,
	clust_num_ores = 5,
	clust_size     = 3,
	y_max          = 0,
	y_min          = -31000,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "mores:stone_with_azurite",
	wherein        = "default:stone",
	clust_scarcity = 24 * 24 * 24,
	clust_num_ores = 27,
	clust_size     = 6,
	y_max          = -64,
	y_min          = -31000,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "mores:stone_with_amethyst",
	wherein        = "default:stone",
	clust_scarcity = 13 * 13 * 13,
	clust_num_ores = 5,
	clust_size     = 3,
	y_max          = 31000,
	y_min          = 1025,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "mores:stone_with_amethyst",
	wherein        = "default:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 3,
	clust_size     = 2,
	y_max          = -64,
	y_min          = -255,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "mores:stone_with_amethyst",
	wherein        = "default:stone",
	clust_scarcity = 13 * 13 * 13,
	clust_num_ores = 5,
	clust_size     = 3,
	y_max          = -256,
	y_min          = -31000,
})






 -- Registering tools
minetest.register_tool("mores:pick_emerald", {
	description = "Emerald Pickaxe",
	inventory_image = "mores_emeraldpick.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=1.0, [2]=0.5, [3]=0.25}, uses=60, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool("mores:shovel_emerald", {
	description = "Emerald Shovel",
	inventory_image = "mores_emeraldshovel.png",
	wield_image = "mores_emeraldshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=0.55, [2]=0.25, [3]=0.15}, uses=60, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

minetest.register_tool("mores:axe_emerald", {
	description = "Emerald Axe",
	inventory_image = "mores_emeraldaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=1.05, [2]=0.45, [3]=0.25}, uses=60, maxlevel=3},
		},
		damage_groups = {fleshy=9},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

minetest.register_tool("mores:sword_emerald", {
	description = "Emerald Sword",
	inventory_image = "mores_emeraldsword.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.95, [2]=0.45, [3]=0.15}, uses=80, maxlevel=3},
		},
		damage_groups = {fleshy=16},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})

minetest.register_tool("mores:amethystpick", {
	description = "Amethyst Pickaxe",
	inventory_image = "mores_amethystpick.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=3.00, [2]=1.40, [3]=0.70}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool("mores:amethystshovel", {
	description = "Amethyst Shovel",
	inventory_image = "mores_amethystshovel.png",
	wield_image = "mores_amethystshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.0, [2]=0.80, [3]=0.30}, uses=40, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

minetest.register_tool("mores:amethystaxe", {
	description = "Amethyst Axe",
	inventory_image = "mores_amethystaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.0, [2]=1.20, [3]=0.90}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

minetest.register_tool("mores:amethystsword", {
	description = "Amethyst Sword",
	inventory_image = "mores_amethystsword.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.0, [2]=1.0, [3]=0.15}, uses=40, maxlevel=2},
		},
		damage_groups = {fleshy=7},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})

minetest.register_tool("mores:azuritepick", {
	description = "Azurite Pickaxe",
	inventory_image = "mores_azuritepick.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=4.0, [2]=1.70, [3]=0.80}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool("mores:azuriteshovel", {
	description = "Azurite Shovel",
	inventory_image = "mores_azuriteshovel.png",
	wield_image = "mores_azuriteshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.0, [2]=0.7, [3]=0.5}, uses=50, maxlevel=2},
		},
		damage_groups = {fleshy=3},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

minetest.register_tool("mores:azuriteaxe", {
	description = "Azurite Axe",
	inventory_image = "mores_azuriteaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			choppy={times={[1]=2.80, [2]=1.90, [3]=1.10}, uses=30, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

minetest.register_tool("mores:azuritesword", {
	description = "Azurite Sword",
	inventory_image = "mores_azuritesword.png",
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=0,
		groupcaps={
			snappy={times={[2]=1.3, [3]=0.35}, uses=30, maxlevel=1},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})




 -- Registering crafting recipes
minetest.register_craft({
	type = "shapeless",
	output = "mores:emerald 9",
	recipe = {"mores:emerald_block"},
})

minetest.register_craft({
	output = "mores:emerald_block",
	recipe = {
		{"mores:emerald", "mores:emerald", "mores:emerald"},
		{"mores:emerald", "mores:emerald", "mores:emerald"},
		{"mores:emerald", "mores:emerald", "mores:emerald"}
	}
})

minetest.register_craft({
	output = "mores:pick_emerald",
	recipe = {
		{"mores:emerald", "mores:emerald", "mores:emerald"},
		{"", "default:stick",    ""},
		{"", "default:stick",    ""}
	}
})

minetest.register_craft({
	output = "mores:shovel_emerald",
	recipe = {
		{"", "mores:emerald", ""},
		{"", "default:stick",    ""},
		{"", "default:stick",    ""}
	}
})

minetest.register_craft({
	output = "mores:axe_emerald",
	recipe = {
		{"mores:emerald", "mores:emerald", ""},
		{"mores:emerald", "default:stick",    ""},
		{"",                 "default:stick",    ""}
	}
})

minetest.register_craft({
	output = "mores:sword_emerald",
	recipe = {
		{"", "mores:emerald", ""},
		{"", "mores:emerald", ""},
		{"", "default:stick",    ""}
	}
})




minetest.register_craft({
	type = "shapeless",
	output = "mores:amethyst 9",
	recipe = {"mores:amethyst_block"},
})

minetest.register_craft({
	output = "mores:amethyst_block",
	recipe = {
		{"mores:amethyst", "mores:amethyst", "mores:amethyst"},
		{"mores:amethyst", "mores:amethyst", "mores:amethyst"},
		{"mores:amethyst", "mores:amethyst", "mores:amethyst"}
	}
})

minetest.register_craft({
	output = "mores:amethystpick",
	recipe = {
		{"mores:amethyst", "mores:amethyst", "mores:amethyst"},
		{"", "default:stick",    ""},
		{"", "default:stick",    ""}
	}
})

minetest.register_craft({
	output = "mores:amethystshovel",
	recipe = {
		{"", "mores:amethyst",   ""},
		{"", "default:stick",    ""},
		{"", "default:stick",    ""}
	}
})

minetest.register_craft({
	output = "mores:amethystaxe",
	recipe = {
		{"mores:amethyst", "mores:amethyst",   ""},
		{"mores:amethyst", "default:stick",    ""},
		{"",               "default:stick",    ""}
	}
})

minetest.register_craft({
	output = "mores:amethystsword",
	recipe = {
		{"", "mores:amethyst", ""},
		{"", "mores:amethyst", ""},
		{"", "default:stick",  ""}
	}
})



minetest.register_craft({
	type = "shapeless",
	output = "mores:azurite 9",
	recipe = {"mores:azurite_block"},
})

minetest.register_craft({
	output = "mores:azurite_block",
	recipe = {
		{"mores:azurite", "mores:azurite", "mores:azurite"},
		{"mores:azurite", "mores:azurite", "mores:azurite"},
		{"mores:azurite", "mores:azurite", "mores:azurite"}
	}
})

minetest.register_craft({
	output = "mores:azuritepick",
	recipe = {
		{"mores:azurite", "mores:azurite", "mores:azurite"},
		{"", "default:stick",    ""},
		{"", "default:stick",    ""}
	}
})

minetest.register_craft({
	output = "mores:azuriteshovel",
	recipe = {
		{"", "mores:azurite",   ""},
		{"", "default:stick",    ""},
		{"", "default:stick",    ""}
	}
})

minetest.register_craft({
	output = "mores:azuriteaxe",
	recipe = {
		{"mores:azurite", "mores:azurite",   ""},
		{"mores:azurite", "default:stick",    ""},
		{"",               "default:stick",    ""}
	}
})

minetest.register_craft({
	output = "mores:azuritesword",
	recipe = {
		{"", "mores:azurite", ""},
		{"", "mores:azurite", ""},
		{"", "default:stick",  ""}
	}
})
