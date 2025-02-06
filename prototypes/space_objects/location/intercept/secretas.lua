local asteroid_util = require("__secretas__.prototypes.planet.asteroid-spawn-definitions")


PlanetsLib:extend({
    {
		type = "space-location",
		name = "secretas-intercept",
		icons = {
			{
				icon = "__alatar-rocketry__/graphics/icons/transfer-point.png",
			},
			{
				icon = "__secretas__/graphics/icons/secretas-icon.png",
				scale = 0.25,
				shift = {6, 6}
			}
		},
		order = "g[secretas-intercept]",
        subgroup = "transfer-point",
		gravity_pull = 0,
		magnitude = 0.5,
		draw_orbit = false,
		fly_condition = false,
		label_orientation = 0.4,
		solar_power_in_space = 26,
		orbit = {
			parent = {
				type = "space-location",
				name = "secretas"
			},
			distance = 4,
			orientation = 0.75
		},
        asteroid_spawn_influence = 0.7,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.aquilo_solar_system_edge, 0.9)
	}
})

table.insert(
	data.raw["technology"]["planet-discovery-secretas"].effects,
	{
		type = "unlock-space-location",
		space_location = "secretas-intercept",
		use_icon_overlay_constant = true
	}
)
