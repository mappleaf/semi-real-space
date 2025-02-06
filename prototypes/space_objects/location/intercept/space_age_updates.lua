PlanetsLib:update({
    {
		type = "space-location",
		name = "nauvis-intercept",
		-- icons =
		-- {
		-- 	{
		-- 		icon = "__alatar-rocketry__/graphics/icons/transfer-point.png",
		-- 	},
		-- 	{
		-- 		icon = "__base__/graphics/icons/nauvis.png",
		-- 		scale = 0.25,
		-- 		shift = {6, 6}
		-- 	}
		-- },
		-- order = "c[nauvis-intercept]",
	    -- subgroup = "transfer-point",
		-- gravity_pull = 0,
		-- magnitude = 0.5,
		-- draw_orbit = false,
		-- fly_condition = false,
		-- label_orientation = 0.49,
		-- solar_power_in_space = 300,
		orbit = {
			parent = {
				type = "planet",
				name = "nauvis"
			},
			distance = 2.5,
			orientation = 0.6
		}
	}
})
