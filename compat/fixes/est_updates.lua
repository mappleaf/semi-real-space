if mods["exotic-space-industries"] then
    if mods["more-galore"] then
        data.raw["recipe"]["fluid-tank-1x1"]["ingredients"] = {
            {type = "item", name = "iron-plate",  amount = 2},
            {type = "item", name = "lead-plate",  amount = 2},
            {type = "item", name = "bronze-gear-wheel",  amount = 1},
            {type = "item", name = "bronze-plate",  amount = 2},
            {type = "item", name = "invar-stick",  amount = 4},
            {type = "item", name = "invar-plate",  amount = 1},
            {type = "item", name = "solder",  amount = 4}
        }
        data.raw["recipe"]["fluid-tank-2x2"]["ingredients"] = {
            {type = "item", name = "iron-plate",  amount = 5},
            {type = "item", name = "lead-plate",  amount = 5},
            {type = "item", name = "bronze-gear-wheel",  amount = 4},
            {type = "item", name = "bronze-plate",  amount = 6},
            {type = "item", name = "invar-beam",  amount = 1},
            {type = "item", name = "invar-stick",  amount = 1},
            {type = "item", name = "invar-plate",  amount = 4},
            {type = "item", name = "solder",  amount = 4}
        }
        data.raw["recipe"]["fluid-tank-3x4"]["ingredients"] = {
            {type = "item", name = "iron-plate",  amount = 30},
            {type = "item", name = "lead-plate",  amount = 30},
            {type = "item", name = "bronze-gear-wheel",  amount = 27},
            {type = "item", name = "bronze-plate",  amount = 30},
            {type = "item", name = "invar-beam",  amount = 6},
            {type = "item", name = "invar-plate",  amount = 27},
            {type = "item", name = "solder",  amount = 4}
        }
        data.raw["recipe"]["fluid-tank-5x5"]["ingredients"] = {
            {type = "item", name = "iron-plate",  amount = 60},
            {type = "item", name = "lead-plate",  amount = 60},
            {type = "item", name = "bronze-gear-wheel",  amount = 54},
            {type = "item", name = "bronze-plate",  amount = 60},
            {type = "item", name = "invar-beam",  amount = 12},
            {type = "item", name = "invar-plate",  amount = 54},
            {type = "item", name = "solder",  amount = 4}
        }
    end

    data:extend({
        {
            type = "recipe",
            name = "ei-diesel-from-light-oil",
            category = "chemistry",
            ingredients = {
                {type = "fluid", name = "light-oil", amount = 20},
                {type = "fluid", name = "lubricant", amount = 5}
            },
            results = {
                {type = "fluid", name = "ei-diesel", amount = 25}
            },
            enabled = false,
            allow_decomposition = false,
            energy_required = 1,
            main_product = "ei-diesel",
            localised_name = {"item-name.ei-diesel"},
        }
    })
    table.insert(data.raw["technology"]["sulfur-processing"].effects, {
        type = "unlock-recipe",
        recipe = "ei-diesel-from-light-oil"
    })
end
