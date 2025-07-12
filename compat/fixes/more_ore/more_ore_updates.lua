if mods["more-ore"] then
    local tech_effects = data.raw["technology"]["zinc-extraction"]["effects"]
    local idx = 1

    for _, effect in pairs(tech_effects) do
        if effect.type == "unlock-recipe" and effect.recipe == "zinc-plate" then
            table.remove(tech_effects, idx)
        end
        idx = idx + 1
    end
end
