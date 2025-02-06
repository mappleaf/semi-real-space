local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")


data:extend({
    {
		type = "space-connection",
		name = "gleba-intercept-to-fulgora-intercept",
		subgroup = "planet-connections",
		from = "gleba-intercept",
		to = "fulgora-intercept",
		order = "d",
		length = 11700,
		icon = "__alatar-rocketry__/graphics/icons/transfer-point.png",
		asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.gleba_fulgora)
	}
})