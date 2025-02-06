local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")


data:extend({
    {
		type = "space-connection",
		name = "sse-nexuz-sw",
		subgroup = "planet-connections",
		from = "solar-system-edge",
		to = "sye-nexuz-sw",
		order = "h",
		length = 658465,
		icon = "__Starmap_Nexuz__/graphics/icons/nexuz.png",
		asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.aquilo_solar_system_edge),
		asteroid_spawn_influence = 0.3
	}
})
