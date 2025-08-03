local asteroid_util = require("__Paracelsin__.prototypes.asteroid-spawn-definitions")


PlanetsLib:extend({
    {
		type = "space-location",
		name = "paracelsin-intercept",
		icons = {
			{
				icon = "__alatar-rocketry__/graphics/icons/transfer-point.png",
			},
			{
				icon = "__Paracelsin-Graphics__/graphics/icons/paracelsin.png",
				scale = 0.25,
				shift = {6, 6}
			}
		},
		order = "g[paracelsin-intercept]",
        subgroup = "transfer-point",
		gravity_pull = 0,
		magnitude = 0.5,
		draw_orbit = false,
		fly_condition = false,
		label_orientation = 0.4,
		solar_power_in_space = 75,
		orbit = {
			parent = {
				type = "planet",
				name = "paracelsin"
			},
			distance = 2.5,
			orientation = 0.4
		},
        asteroid_spawn_influence = 1,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.fulgora_paracelsin, 0.9)
	}
})

table.insert(
	data.raw["technology"]["planet-discovery-paracelsin"].effects,
	{
		type = "unlock-space-location",
		space_location = "paracelsin-intercept",
		use_icon_overlay_constant = true
	}
)
