PlanetsLib:update({
    {
        type = "planet",
        name = "moshine",
        orbit = {
            parent = {
                type = "space-location",
                name = "star"
            },
            distance = 10,
            orientation = 0.35
        }
    }
})

local moshine_surface_properties = data.raw["planet"]["moshine"]["surface_properties"]
for property, _ in pairs(moshine_surface_properties) do
    if property == "solar-power" then
        moshine_surface_properties[property] = 750
    end
end
