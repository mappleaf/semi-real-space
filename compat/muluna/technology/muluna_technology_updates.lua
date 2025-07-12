local ssp_prereqs = data.raw["technology"]["rocket-silo"]["prerequisites"]

local idx = 1

for _, prereq in pairs(ssp_prereqs) do
    if prereq == "space-science-pack" then
        table.remove(ssp_prereqs, idx)
        break
    end
    idx = idx + 1
end
