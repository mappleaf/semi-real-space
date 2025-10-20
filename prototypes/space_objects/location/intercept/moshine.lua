local asteroid_util = require("__alatar-rocketry__.prototypes.asteroid-spawn-definitions")


PlanetsLib:extend({
    {
		type = "space-location",
		name = "moshine-intercept",
		icons = {
			{
				icon = "__alatar-rocketry__/graphics/icons/transfer-point.png",
			},
			{
				icon = "__Moshine__/graphics/icons/moshine.png",
				scale = 0.25,
				shift = {6, 6}
			}
		},
		order = "g[moshine-intercept]",
        subgroup = "transfer-point",
		gravity_pull = 0,
		magnitude = 0.5,
		draw_orbit = false,
		fly_condition = false,
		label_orientation = 0.2,
		solar_power_in_space = 1200,
		orbit = {
			parent = {
				type = "space-location",
				name = "star"
			},
			distance = 8,
			orientation = 0.35
		},
        asteroid_spawn_influence = 0.7,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.vulcanus_ferrarius, 0.9)
	}
})

table.insert(
	data.raw["technology"]["planet-discovery-moshine"].effects,
	{
		type = "unlock-space-location",
		space_location = "moshine-intercept",
		use_icon_overlay_constant = true
	}
)
