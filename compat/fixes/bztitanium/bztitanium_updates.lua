if mods["bztitanium"] then
    -- titanium
    local titanium_proc_tech_preqs = data.raw["technology"]["titanium-processing"]["prerequisites"]
    local idx = 1

    for _, preq in pairs(titanium_proc_tech_preqs) do
        if preq == "lubricant" or preq == "uranium-mining" then
            table.remove(titanium_proc_tech_preqs, idx)
        end
        idx = idx + 1
    end

    data.raw["technology"]["titanium-processing"]["research_trigger"] = nil
    data.raw["technology"]["titanium-processing"]["unit"] = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 30
    }
    data.raw["technology"]["titanium-processing"]["prerequisites"] = {
        "advanced-material-processing"
    }

    data.raw["resource"]["titanium-ore"]["minable"]["required_fluid"] = nil
    data.raw["resource"]["titanium-ore"]["minable"]["fluid_amount"] = nil
end
