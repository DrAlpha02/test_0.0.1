local machine_recipe = {
    type = "recipe",
    name = "IronAssembler",
    enabled = true,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "iron-plate", amount = 20},
        {type = "item", name = "copper-cable", amount = 10}
    },
    results = {
        {type = "item", name = "IronAssembler", amount = 1}
    }
}

local double_iron = {
    type = "recipe",
    name = "double-iron-plate",
    category = "Plate2",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "iron-plate", amount = 1}
    },
    results = {
        {type = "item", name = "iron-plate", amount = 2}
    },
    allow_productivity = true
}
local bloomery_recipe = {
    type = "recipe",
    name = "bloomery-craft",
    enabled = true,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "iron-plate", amount = 10},
        {type = "item", name = "stone-brick", amount = 5}
    },
    results = {
        {type = "item", name = "bloomery", amount = 1}
    },
    order = "a[bloomery]"
}

data:extend({bloomery_recipe})
data:extend({machine_recipe, double_iron})