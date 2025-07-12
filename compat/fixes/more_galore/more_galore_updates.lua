if mods["more-ore"] then
    -- zinc
    local bronze_proc_tech_preqs = data.raw["technology"]["bronze-processing"]["prerequisites"]
    local idx = 1

    for _, preq in pairs(bronze_proc_tech_preqs) do
        if preq == "automation-science-pack" then
            preq = "steam-power"
            break
        end
        idx = idx + 1
    end
end
