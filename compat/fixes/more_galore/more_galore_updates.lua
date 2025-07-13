if mods["more-ore"] then
    -- zinc
    local bronze_proc_tech = data.raw["technology"]["bronze-processing"]
    local bronze_proc_tech_preqs = bronze_proc_tech["prerequisites"]
    local idx = 1

    bronze_proc_tech["unit"] = nil
    bronze_proc_tech["research_trigger"] = {
        type = "craft-item",
        item = "tin-plate",
        count = 1
    }


    for _, preq in pairs(bronze_proc_tech_preqs) do
        if preq == "automation-science-pack" then
            preq = "steam-power"
            break
        end
        idx = idx + 1
    end
end
