if mods["James-Oil-Processing"] then
	data:extend({
		{
			type = "recipe",
			name = "sulfur-separation-duplicated",
			category = "chemistry",
			subgroup = "fluid-recipes",
			order = "f[sulfur]",
			energy_required = 1,
			enabled = false,
			main_product= "sulfur",
			ingredients = {
				{type = "fluid", name = "hydrogen-sulfide", amount = 20},
				{type="fluid", name="steam", amount=100},
			},
			results = {
				{type="item", name="sulfur", amount=2},
				{type="fluid", name="water", amount=15},
			},
			crafting_machine_tint = {
				primary = {r = 1.000, g = 0.659, b = 0.000},
				secondary = {r = 1.0, g = 0.000, b = 0.000},
				tertiary = {r = 0.960, g = 0.806, b = 0.000},
			},
			allow_decomposition = false
		},
	})

	local sulfur_tech = data.raw["technology"]["sulfur-processing"]["effects"]
	table.insert(sulfur_tech, {
		type = "unlock-recipe",
		recipe = "sulfur-separation-duplicated"
	})

	for i, effect in pairs(sulfur_tech) do
		if effect.type == "unlock-recipe" and effect.recipe == "sulfur" then
			table.remove(sulfur_tech, i)
			break
		end
	end
end
