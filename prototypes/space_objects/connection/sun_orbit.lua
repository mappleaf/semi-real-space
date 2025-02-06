local asteroid_spawns2 =
{
	{
		type = "asteroid-chunk",
		asteroid = "slp-plasma-chunk",
		probability = 0.3,
		speed = 12 * meter/second,
		angle_when_stopped =1
	},
	{
		type = "entity",
		asteroid = "slp-plasma-asteroid",
		probability = 0.005,
		speed = 3 * meter/second,
		angle_when_stopped =1
	},
	{
		type = "asteroid-chunk",
		asteroid = "slp-plasmawave-asteroid",
		probability = 0.7,
		speed = 15 * meter/second,
		angle_when_stopped = 1
	}
}


PlanetsLib:update({
    {
        type = "space-location",
        name = "slp-solar-system-sun2",
		icons =
		{
			{
				icon = "__slp-dyson-sphere-reworked__/graphics/icons/sun2.png"
			}
		},
		order = "с[solar-system-edge]",
	    subgroup = "planets",
		gravity_pull = 100,
		magnitude = 1.0,
		draw_orbit = true,
		fly_condition = false,
		label_orientation = 0.15,
		solar_power_in_space = 15000,
		orbit =
		{
			parent = {
				type = "space-location",
                name = "star"
			},
			distance = 4.5,
			orientation = 0.125
		},
        asteroid_spawn_influence = 1,
		asteroid_spawn_definitions = asteroid_spawns2,
	}
})

data.raw["space-connection"]["slp-vulcanus-sun"]["from"] = "ferrarius-belt"
data.raw["space-connection"]["slp-vulcanus-sun"]["length"] = 4618
-- data.raw["space-connection"]["slp-nauvis-sun"]["length"] = 41944
data.raw["space-connection"]["slp-sun-to-sun"]["length"] = 937

data.raw["space-connection"]["slp-nauvis-sun"] = nil
