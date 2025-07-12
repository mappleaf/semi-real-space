require "prototypes.space_object_updates"

require "prototypes.technology_updates"


if settings.startup["global-modifier"].value ~= 1 then
    for _, route in pairs(data.raw["space-connection"]) do
        data.raw["space-connection"][route.name]["length"] = math.min(data.raw["space-connection"][route.name]["length"] * settings.startup["global-modifier"].value, 4294967295)
    end
end
