data:extend({
  {
    type = "technology",
    name = "steel-walls",
    icon = "__base__/graphics/technology/steel-processing.png",
    prerequisites= {"stone-walls", "steel-processing"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "steel-wall"
      }
    },
    unit =
    {
      count = 50,
      ingredients = {{"science-pack-1", 1},
                     {"science-pack-2", 1}},
      time = 5
    },
    order = "c-a"
  },
    {
    type = "technology",
    name = "power-armor-upgrades",
    icon = "__base__/graphics/technology/power-armor-mk2.png",
    prerequisites= {"power-armor-2", "personal-laser-defense-equipment"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "personal-laser-defense-equipment-mk2"
      },
      {
        type = "unlock-recipe",
        recipe = "power-armor-mk3"
      },
        {
          type = "unlock-recipe",
          recipe="fusion-reactor-equipment-mk2"
        }
    },
    unit =
    {
      count = 150,
      ingredients = {{"science-pack-2", 1},
                     {"science-pack-3", 1}},
      time = 5
    },
    order = "c-a"
  }
  })
