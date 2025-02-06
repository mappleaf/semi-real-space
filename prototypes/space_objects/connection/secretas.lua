local asteroid_util = require("__secretas__.prototypes.planet.asteroid-spawn-definitions")


data:extend({
    {
		type = "space-connection",
		name = "secretas-low-to-intercept",
		subgroup = "planet-connections",
		from = "secretas",
		to = "secretas-intercept",
		order = "d",
		length = 11700,
		icon = "__alatar-rocketry__/graphics/icons/transfer-point.png",
		asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.fulgora_aquilo)
	},
    {
		type = "space-connection",
		name = "secretas-intercept-to-aquilite-cluster",
		subgroup = "planet-connections",
		from = "secretas-intercept",
		to = "aquilite-cluster",
		order = "d",
		length = 32437.2,
		icon = "__alatar-rocketry__/graphics/icons/transfer-point.png",
		asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.fulgora_aquilo)
	}
})
