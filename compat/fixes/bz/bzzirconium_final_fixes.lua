if mods["bzzirconium"] and mods["exotic-space-industries"] then
    local zirconia_processing_science_packs = data.raw["technology"]["zirconia-processing"]["unit"].ingredients
    local i = 1
    for _, ingredient in pairs(zirconia_processing_science_packs) do
        for _, ing in pairs(ingredient) do
            if ing == "ei-computer-age-tech" then
                table.remove(zirconia_processing_science_packs, i)
                break
            end
        end
        i = i + 1
    end
end
