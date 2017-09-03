data:extend({
  {
    type="recipe",
      name="steel-wall",
      energy_required=5,
      enabled=false,
      ingredients={
        {"steel-plate", 5}
      },
      result="steel-wall"
  },
  {
    type = "recipe",
    name = "power-armor-mk3",
    enabled = false,
    energy_required = 25,
    ingredients = {{ "power-armor-mk2", 2}, {"processing-unit", 5}},
    result = "power-armor-mk3",
    requester_paste_multiplier = 1
  },{
    type = "recipe",
    name = "personal-laser-defense-equipment-mk2",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"personal-laser-defense-equipment", 1},
      {"processing-unit", 5},
    },
    result = "personal-laser-defense-equipment-mk2"
  },
    {
    type = "recipe",
    name = "fusion-reactor-equipment-mk2",
    enabled = false,
    energy_required = 30,
    ingredients =
    {
      {"fusion-reactor-equipment", 2}
    },
    result = "fusion-reactor-equipment-mk2"
  }
})
