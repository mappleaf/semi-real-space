local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")


-- really bullshit naming system as if I want to change location I need to change the whole name (and clutter all the references)
-- why can't I just store all connections in array inside of separate array and just bind all the connections as references by locations?
-- I can even filter over it then and find all the connections that are connected to this planet... Maybe I PR it to the PlanetsLib?
local fulgoratenebris = data.raw["space-connection"]["fulgora-tenebris"]
if fulgoratenebris then
    local syenexuzswtenebris = table.deepcopy(fulgoratenebris)
    syenexuzswtenebris.length = 3292328
    syenexuzswtenebris.asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.aquilo_solar_system_edge)
    syenexuzswtenebris.name = "sye-nexuz-sw-tenebris"

    local counter = 1
    for _, v in pairs(data.raw["space-connection"]) do
        if v.name == "fulgora-tenebris" then
            table.remove(data.raw["space-connection"], counter)
            break
        end
        counter = counter + 1
    end

    data:extend({syenexuzswtenebris})
end
