local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")


data.raw["space-connection"]["nauvis-low-to-intercept"]["length"] = 700
data.raw["space-connection"]["gleba-low-to-intercept"]["length"] = 950
data.raw["space-connection"]["vulcanus-low-to-intercept"]["length"] = 1500
data.raw["space-connection"]["fulgora-low-to-intercept"]["length"] = 1240
data.raw["space-connection"]["aquilo-low-to-intercept"]["length"] = 880

data.raw["space-connection"]["carbolithic-belt-to-intercept"]["length"] = 1274

data.raw["space-connection"]["vulcanus-ferrarius"]["length"] = 6677

data.raw["space-connection"]["fulgora-to-carbolithic-belt"]["asteroid_spawn_definitions"] = asteroid_util.spawn_definitions(asteroid_util.fulgora_aquilo)
data.raw["space-connection"]["carbolithic-belt-to-aquilo"]["asteroid_spawn_definitions"] = asteroid_util.spawn_definitions(asteroid_util.fulgora_aquilo)
data.raw["space-connection"]["aquilo-to-aquilite-cluster"]["asteroid_spawn_definitions"] = asteroid_util.spawn_definitions(asteroid_util.fulgora_aquilo)
data.raw["space-connection"]["aquilite-cluster-to-solar-system-edge"]["asteroid_spawn_definitions"] = asteroid_util.spawn_definitions(asteroid_util.aquilo_solar_system_edge)

data.raw["space-connection"]["fulgora-to-carbolithic-belt"]["length"] = 27670
data.raw["space-connection"]["carbolithic-belt-to-aquilo"]["length"] = 15528
data.raw["space-connection"]["aquilo-to-aquilite-cluster"]["length"] = 84870
data.raw["space-connection"]["aquilite-cluster-to-solar-system-edge"]["length"] = 327078
