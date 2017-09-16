data:extend({
    -- Recipe for roboport mks
    {
    type = "recipe",
    name = "roboport-mk2",
    enabled = false,
    ingredients =
    {
      {"roboport", 1},
      {"iron-gear-wheel", 45},
      {"advanced-circuit", 45}
    },
    result = "roboport-mk2",
    energy_required = 5
  },
    --Recipe for the Steel Wall
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
    --Recipe for the power armor mk3
  {
    type = "recipe",
    name = "power-armor-mk3",
    enabled = false,
    energy_required = 25,
    ingredients = {{ "power-armor-mk2", 1}, {"processing-unit", 5}, {"advanced-circuit", 10}},
    result = "power-armor-mk3",
    requester_paste_multiplier = 1
  },
    --recipe for pew pew laser gun
    {
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
    --Recipe for level 2 fusion reactors.
    {
    type = "recipe",
    name = "fusion-reactor-equipment-mk2",
    enabled = false,
    energy_required = 30,
    ingredients =
    {
      {"fusion-reactor-equipment", 2},
      {"advanced-circuit", 5}
    },
    result = "fusion-reactor-equipment-mk2"
  }
})
