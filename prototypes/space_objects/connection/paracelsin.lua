local asteroid_util = require("__Paracelsin__.prototypes.asteroid-spawn-definitions")

data:extend({
    {
		type = "space-connection",
		name = "paracelsin-low-to-intercept",
		subgroup = "planet-connections",
		from = "paracelsin",
		to = "paracelsin-intercept",
		order = "d",
		length = 720,
		icon = "__alatar-rocketry__/graphics/icons/transfer-point.png",
		asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.fulgora_paracelsin)
	}
})
