local entity = {
    type = "assembling-machine",
    name = "IronAssembler",

    crafting_categories = {"Plate2"},
    ingredient_count = 1,
    crafting_speed = 1,
    energy_usage = "150kW",
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        drain = "5kW"
    },

    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    minable = {mining_time = 0.2, result = "IronAssembler"},

    fluid_boxes = {},

    graphics_set = {
        animation = {
            north = {
                filename = "__test__/graphics/icons/iron-assembler.png",
                size = 64,
                scale = 0.5,
                frame_count = 1,
                shift = {0, 0},
                direction_count = 1
            },
            east = {
                filename = "__test__/graphics/icons/iron-assembler.png",
                size = 64,
                scale = 0.5,
                frame_count = 1,
                shift = {0, 0},
                direction_count = 1
            },
            south = {
                filename = "__test__/graphics/icons/iron-assembler.png",
                size = 64,
                scale = 0.5,
                frame_count = 1,
                shift = {0, 0},
                direction_count = 1
            },
            west = {
                filename = "__test__/graphics/icons/iron-assembler.png",
                size = 64,
                scale = 0.5,
                frame_count = 1,
                shift = {0, 0},
                direction_count = 1
            }
        },

    }
}

local bloomery = {
    type = "furnace",
    name = "bloomery",
    icon = "__test__/graphics/entities/furnace_sir/fur.png",
    icon_size = 64,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "bloomery"},
    max_health = 200,
    corpse = "big-remnants",
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    resistances = {
        {type = "fire", percent = 70},
        {type = "physical", percent = 30}
    },

    -- Размеры 2×2 тайла
    collision_box = {{-1, -1}, {1, 1}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box = {{-1, -1}, {1, 1}},

    energy_usage = "180kW",
    energy_source = {
        type = "burner",
        fuel_categories = {"chemical"},
        effectivity = 1,
        emissions_per_minute = {pollution = 4},
        fuel_inventory_size = 1,
        burnt_inventory_size = 1
    },
    crafting_categories = {"smelting"},
    crafting_speed = 1,
    source_inventory_size = 1,
    result_inventory_size = 1,

    graphics_set = {
        animation = {
            north = {
                filename = "__test__/graphics/entities/furnace_sir/fur.png",
                width = 128,
                height = 96,
                scale = 0.85,
                frame_count = 1,
                shift = {0.8, -0.125},
                direction_count = 1
            },
            east = {
                filename = "__test__/graphics/entities/furnace_sir/fur.png",
                width = 128,
                height = 96,
                scale = 0.85,
                frame_count = 1,
                shift = {0.8, -0.125},
                direction_count = 1
            },
            south = {
                filename = "__test__/graphics/entities/furnace_sir/fur.png",
                width = 128,
                height = 96,
                scale = 0.85,
                frame_count = 1,
                shift = {0.8, -0.125},
                direction_count = 1
            },
            west = {
                filename = "__test__/graphics/entities/furnace_sir/fur.png",
                width = 128,
                height = 96,
                scale = 0.85,
                frame_count = 1,
                shift = {0.8, -0.125},
                direction_count = 1
            }
        },
        working_visualisations = {
            {
                animation = {
                    filename = "__test__/graphics/entities/furnace_sir/furo.png",
                    width = 128,
                    height = 96,
                    scale = 0.85,
                    frame_count = 1,
                    animation_speed = 0.6,
                    shift = {0.8, -0.125},
                },
                light = {intensity = 0.4, size = 6}
            }
        }
    },

    working_sound = {
        sound = {
            filename = "__test__/audio/strong-burnout.ogg",
            volume = 0.6
        },
        idle_sound = {
            filename = "__test__/audio/strong-burnout.ogg",
            volume = 0.4
        },
        apparent_volume = 1.5
    },

    fast_replaceable_group = "furnace",
}

data:extend({bloomery})
data:extend({entity})