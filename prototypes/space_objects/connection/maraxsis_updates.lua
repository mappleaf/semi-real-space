-- local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")

-- local ids_to_remove = {}


-- local counter = 1
-- for _, v in pairs(data.raw["space-connection"]) do
--     if v.name == "vulcanus-maraxsis" then
--         ids_to_remove:extend(counter)
--     elseif v.name == "fulgora-maraxsis" then
--         ids_to_remove:extend(counter)
--     end
--     counter = counter + 1
-- end

-- for _, v in pairs(ids_to_remove) do
--     table.remove(data.raw["space-connection"], v)
-- end

data.raw["space-connection"]["vulcanus-maraxsis"]["length"] = 20252
