local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")

local vulcanusmaraxsis = data.raw["space-connection"]["vulcanus-maraxsis"]
local fulgoramaraxsis = data.raw["space-connection"]["fulgora-maraxsis"]


if vulcanusmaraxsis then
    data.raw["space-connection"]["vulcanus-maraxsis"] = nil
end

if fulgoramaraxsis then
    data.raw["space-connection"]["fulgora-maraxsis"] = nil
end

data:extend {{
    type = "space-connection",
    name = "maraxsis-tenebris",
    subgroup = "planet-connections",
    from = "maraxsis",
    to = "tenebris",
    order = "g",
    length = 126581,
    asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.aquilo_solar_system_edge)
}}
