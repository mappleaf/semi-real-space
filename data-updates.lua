require "prototypes.space_object_updates"


if settings.startup["global-modifier"].value ~= 1 then
    for _, route in pairs(data.raw["space-connection"]) do
        if route then
            if route.name then
                log(route.name)
            else
                log(route.from)
                log(route.to)
            end
        else
            log(_)
        end
        data.raw["space-connection"][route.name]["length"] = math.min(data.raw["space-connection"][route.name]["length"] * settings.startup["global-modifier"].value, 4294967295)
    end
end
