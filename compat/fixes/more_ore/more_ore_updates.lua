if mods["more-ore"] then
    -- zinc
    local zinc_extr_tech_effects = data.raw["technology"]["zinc-extraction"]["effects"]
    local idx = 1

    for _, effect in pairs(zinc_extr_tech_effects) do
        if effect.type == "unlock-recipe" and effect.recipe == "zinc-plate" then
            table.remove(zinc_extr_tech_effects, idx)
            break
        end
        idx = idx + 1
    end

    local recipe = data.raw["recipe"]["zinc-plate"]
    recipe.enabled = true

    local silicon_tech_effects = data.raw["technology"]["graphite-processing"]["effects"]
    table.insert(silicon_tech_effects, {
        type = "unlock-recipe",
        recipe = "graphite-plate"
    })
    table.insert(silicon_tech_effects, {
        type = "unlock-recipe",
        recipe = "graphite-stick"
    })
end
