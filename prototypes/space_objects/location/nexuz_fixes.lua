data.raw["space-location"]["sye-nauvis-ne"] = nil


local sds_tech = data.raw["technology"]["starsystem-discovery-nexuz"]

for key, effect in pairs(sds_tech.effects) do
    if effect.space_location == "sye-nauvis-ne" then
        table.remove(sds_tech.effects, key)
    end
end
