local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")

local space_connections = {
    {
        name = "sol-mercury",
        length = 510.1
    },
    {
        name = "mercury-venus",
        length = 513.12
    },
    {
        name = "venus-earth",
        length = 408.41
    },
    {
        name = "nauvis-earth",
        length = 493.67
    },
    {
        name = "earth-luna",
        length = 39.04
    },
    {
        name = "earth-mars",
        length = 827.27
    },
    {
        name = "mars-phobos",
        length = 6.39
    },
    {
        name = "phobos-deimos",
        length = 20.06
    },
    {
        name = "mars-asteroid-belt-inner",
        length = 1107.02
    },
    {
        name = "asteroid-belt-inner-ceres",
        length = 388.96
    },
    {
        name = "ceres-vesta",
        length = 209.44
    },
    {
        name = "vesta-pallas",
        length = 329.11
    },
    {
        name = "pallas-hygiea",
        length = 1436.14
    },
    {
        name = "asteroid-belt-inner-jupiter",
        length = 3994.27
    },
    {
        name = "jupiter-io",
        length = 350
    },
    {
        name = "io-europa",
        length = 253
    },
    {
        name = "europa-ganymede",
        length = 393
    },
    {
        name = "ganymede-callisto",
        length = 813.8
    },
    {
        name = "jupiter-saturn",
        length = 7315.34
    },
    {
        name = "saturn-mimas",
        length = 125
    },
    {
        name = "mimas-enceladus",
        length = 53
    },
    {
        name = "enceladus-tethys",
        length = 57
    },
    {
        name = "tethys-dione",
        length = 83
    },
    {
        name = "dione-rhea",
        length = 149
    },
    {
        name = "rhea-titan",
        length = 661
    },
    {
        name = "titan-hyperion",
        length = 335
    },
    {
        name = "hyperion-iapetus",
        length = 2027
    },
    {
        name = "saturn-uranus",
        length = 14750.35
    },
    {
        name = "uranus-ariel",
        length = 165
    },
    {
        name = "ariel-umbriel",
        length = 74
    },
    {
        name = "umbriel-titania",
        length = 170
    },
    {
        name = "titania-oberon",
        length = 147
    },
    {
        name = "oberon-miranda",
        length = 452
    },
    {
        name = "uranus-neptune",
        length = 15258.98
    },
    {
        name = "neptune-triton",
        length = 3.29
    },
    {
        name = "neptune-asteroid-belt-outer",
        length = 4487.93
    },
    {
        name = "asteroid-belt-outer-pluto",
        length = 2692.77
    },
    {
        name = "makemake-pluto",
        length = 26778.01
    },
    {
        name = "haumea-pluto",
        length = 23038.07
    },
    {
        name = "eris-pluto",
        length = 49816.09
    },
    {
        name = "gonggong-eris",
        length = 747.99
    },
    {
        name = "pluto-charon",
        length = 1.78
    },
    {
        name = "gonggong-pluto",
        length = 49068.1
    }
}


for _, connection in pairs(space_connections) do
    data.raw["space-connection"][connection.name]["length"] = math.max(connection.length * 20, 100)
end
