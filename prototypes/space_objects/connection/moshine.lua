local asteroid_util = require("__alatar-rocketry__.prototypes.asteroid-spawn-definitions")

data:extend({
    {
		type = "space-connection",
		name = "moshine-low-to-intercept",
		subgroup = "planet-connections",
		from = "moshine",
		to = "moshine-intercept",
		order = "d",
		length = 940,
		icon = "__alatar-rocketry__/graphics/icons/transfer-point.png",
		asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.vulcanus_ferrarius)
	}
})
