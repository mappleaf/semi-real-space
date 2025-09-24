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


    if mods["more-galore"] then
        local effects = data.raw["technology"]["titanium-processing"]["effects"]
        table.insert(effects, {
            type = "unlock-recipe",
            recipe = "titanium-gear-wheel"
        })
        table.insert(effects, {
            type = "unlock-recipe",
            recipe = "titanium-stick"
        })
        table.insert(effects, {
            type = "unlock-recipe",
            recipe = "titanium-wire"
        })
        table.insert(effects, {
            type = "unlock-recipe",
            recipe = "titanium-beam"
        })
    elseif mods["exotic-space-industries"] then
        local effects = data.raw["technology"]["titanium-processing"]["effects"]

        if mods["hot-metals"] then
            result_item = "hot-titanium-plate"
        else
            result_item = "titanium-plate"
        end

        data:extend({
            {
                type = "recipe",
                name = "titanium-plate-basic",
                category = "smelting",
                ingredients = {
                    {type = "item", name = "titanium-ore", amount = 4}
                },
                results = {
                    {type = "item", name = result_item, amount = 1}
                },
                enabled = false,
                allow_decomposition = false,
                energy_required = 3.6,
                allow_productivity = true,
                main_product = result_item,
                localised_name = {"item-name." .. result_item},
            }
        })

        table.insert(effects, {
            type = "unlock-recipe",
            recipe = "titanium-plate-basic"
        })
    end
end
