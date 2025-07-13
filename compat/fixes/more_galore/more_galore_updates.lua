if mods["more-ore"] then
    -- zinc
    local bronze_proc_tech = data.raw["technology"]["bronze-processing"]
    -- local bronze_proc_tech_preqs = bronze_proc_tech["prerequisites"]
    -- local idx = 1

    bronze_proc_tech["unit"] = nil
    bronze_proc_tech["research_trigger"] = {
        type = "craft-item",
        item = "tin-plate",
        count = 1
    }


    -- for _, preq in pairs(bronze_proc_tech_preqs) do
    --     if preq == "automation-science-pack" then
    --         table.remove(bronze_proc_tech_preqs, idx)
    --         break
    --     end
    --     idx = idx + 1
    -- end
    

    -- bronze
    if mods["bztin"] then
        local bronze_plate_recipe = data.raw["recipe"]["bronze-plate"]
        bronze_plate_recipe.category = "smelting"
    end

    data.raw["technology"]["bronze-processing"]["prerequisites"] = {"steam-power"}


    -- gold
    local gold_plate_recipe = data.raw["recipe"]["gold-plate"]
    gold_plate_recipe.category = "smelting"
    
    data.raw["resource"]["gold"]["minable"]["result"] = "gold-ore"
end
