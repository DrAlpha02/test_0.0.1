data:extend({
  {
    type = "technology",
    name = "StealX2",
    icon = "__test__/graphics/technology/StealX2.png",
    icon_size = 256,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "double-iron-plate"
      }
    },
    prerequisites = {"steel-processing"},
    unit = {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    order = "c-a"
  }
})