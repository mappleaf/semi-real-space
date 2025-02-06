local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")

-- local custom_space_connections = nil {
    -- {
    --     type = "space-connection",
    --     name = "gleba-asteroid-belt-inner",
    --     subgroup = "planet-connections",
    --     from = "gleba",
    --     to = "asteroid-belt-inner",
    --     order = "u[gleba]-e[asteroid-belt-inner]",
    --     length = 9244.1,
    --     asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.aquilo_solar_system_edge),
    --     --asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.belt_asteroids),
    --     space_effects = {
    --         background_color = { r = 0.4, g = 0.3, b = 0.1 },
    --         particle_color = { r = 0.6, g = 0.5, b = 0.2 }
    --     }
    -- },
    -- {
    --     type = "space-connection",
    --     name = "fulgora-asteroid-belt-inner",
    --     subgroup = "planet-connections",
    --     from = "fulgora",
    --     to = "asteroid-belt-inner",
    --     order = "v[fulgora]-e[asteroid-belt-inner]",
    --     length = 2767.5,
    --     asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.aquilo_solar_system_edge),
    --     --asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.belt_asteroids),
    --     space_effects = {
    --         background_color = { r = 0.4, g = 0.3, b = 0.1 },
    --         particle_color = { r = 0.6, g = 0.5, b = 0.2 }
    --     }
    -- },
    -- {
    --     type = "space-connection",
    --     name = "asteroid-belt-inner-aquilo",
    --     subgroup = "planet-connections",
    --     from = "asteroid-belt-inner",
    --     to = "aquilo",
    --     order = "e[asteroid-belt-inner]-w[aquilo]",
    --     length = 8302.6,
    --     asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.aquilo_solar_system_edge),
    --     --asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.belt_asteroids),
    --     space_effects = {
    --         background_color = { r = 0.4, g = 0.3, b = 0.1 },
    --         particle_color = { r = 0.6, g = 0.5, b = 0.2 }
    --     }
    -- },
    -- {
    --     type = "space-connection",
    --     name = "asteroid-belt-outer-solar-system-edge",
    --     subgroup = "planet-connections",
    --     from = "asteroid-belt-outer",
    --     to = "solar-system-edge",
    --     order = "j[asteroid-belt-outer]-y[solar-system-edge]",
    --     length = 29919.57,
    --     asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.aquilo_solar_system_edge),
    --     --asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.belt_asteroids),
    --     space_effects = {
    --         background_color = { r = 0.4, g = 0.3, b = 0.1 },
    --         particle_color = { r = 0.6, g = 0.5, b = 0.2 }
    --     }
    -- },
    -- {
    --     type = "space-connection",
    --     name = "vulcanus-mercury",
    --     subgroup = "planet-connections",
    --     from = "vulcanus",
    --     to = "mercury",
    --     order = "x[vulcanus]-a[mercury]",
    --     length = 384.84,
    --     asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_gleba),
    --     --asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.aquilo_solar_system_edge),
    --     space_effects = {
    --         background_color = { r = 0.2, g = 0.1, b = 0.3 },
    --         particle_color = { r = 0.6, g = 0.4, b = 0.2 }
    --     }
    -- },
    -- {
    --     type = "space-connection",
    --     name = "sol-slp-solar-system-sun",
    --     subgroup = "planet-connections",
    --     from = "sol",
    --     to = "slp-solar-system-sun",
    --     order = "0[sol]-t[slp-solar-system-sun]",
    --     length = 139.44,
    --     asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_gleba),
    --     --asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.aquilo_solar_system_edge),
    --     space_effects = {
    --         background_color = { r = 0.2, g = 0.1, b = 0.3 },
    --         particle_color = { r = 0.6, g = 0.4, b = 0.2 }
    --     }
    -- },
    -- {
    --     type = "space-connection",
    --     name = "maraxsis-tenebris",
    --     subgroup = "planet-connections",
    --     from = "maraxsis",
    --     to = "tenebris",
    --     icon = "__semi-real-space__/graphics/icons/empty.png",
    --     order = "g",
    --     length = 126581,
    --     asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.aquilo_solar_system_edge)
    -- }
-- }


-- if custom_space_connections then
--     for i, space_connection in pairs(custom_space_connections) do
--         if space_connection.icons == nil and space_connection.icon == nil then
--             space_connection.icons = {
--                 {
--                     icon = "__space-age__/graphics/icons/planet-route.png"
--                 }
--             }
--             local from = {}
--             local to = {}
--             for _, planet in pairs(data.raw["planet"]) do
--                 if planet.name == space_connection.from then
--                     from = planet
--                 end
--                 if planet.name == space_connection.to then
--                     to = planet
--                 end
--             end

--             if from.icon ~= nil then
--                 local icon_size = from.icon_size or 64
--                 table.insert(space_connection.icons, {
--                     icon = from.icon,
--                     icon_size = icon_size,
--                     scale = 1 / ( icon_size / (64 * 0.33300000000000001) ),
--                     shift = {
--                         -6,
--                         -6
--                     }
--                 })
--             end
--             if to.icon ~= nil then
--                 local icon_size = to.icon_size or 64
--                 table.insert(space_connection.icons, {
--                     icon = to.icon,
--                     icon_size = icon_size,
--                     scale = 1 / ( icon_size / (64 * 0.33300000000000001) ),
--                     shift = {
--                         6,
--                         6
--                     }
--                 })
--             end
--         end

--         custom_space_connections[i] = space_connection -- Set the new space connection to the modified one.
--     end
--     data:extend(custom_space_connections)
-- end


data:extend({
    {
        type = "space-connection",
        name = "corrundum-maraxsis",
        subgroup = "planet-connections",
        from = "corrundum",
        to = "maraxsis",
        icon = "__semi-real-space__/graphics/icons/empty.png",
        order = "g",
        length = 10397.6,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.fulgora_aquilo),
		asteroid_spawn_influence = 0.65
    }
})
