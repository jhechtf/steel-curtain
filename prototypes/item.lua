data:extend({
  {
    type = "item",
    name = "steel-wall",
    icon = "__base__/graphics/icons/stone-wall.png",
    flags = {"goes-to-quickbar"},
    subgroup = "defensive-structure",
    order = "a[steel-wall]-a[steel-wall]",
    place_result = "steel-wall",
    stack_size = 100
  },
    {
    type = "item",
    name = "personal-laser-defense-equipment-mk2",
    icon = "__base__/graphics/icons/personal-laser-defense-equipment.png",
    placed_as_equipment_result = "personal-laser-defense-equipment-mk2",
    flags = {"goes-to-main-inventory"},
    subgroup = "equipment",
    order = "d[active-defense]-a[personal-laser-defense-equipment-mk2]",
    stack_size = 50
  },
  {
    type = "armor",
    name = "power-armor-mk3",
    icon = "__base__/graphics/icons/power-armor-mk2.png",
    flags = {"goes-to-main-inventory"},
    resistances =
    {
      {
        type = "physical",
        decrease = 10,
        percent = 60
      },
      {
        type = "acid",
        decrease = 10,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 60,
        percent = 70
      },
      {
        type = "fire",
        decrease = 0,
        percent = 90
      }
    },
    durability = 500000,
    subgroup = "armor",
    order = "e[power-armor-mk3]",
    stack_size = 1,
    equipment_grid = "extra-large-equipment-grid",
    inventory_size_bonus = 100
  },
    {
    type = "item",
    name = "fusion-reactor-equipment-mk2",
    icon = "__base__/graphics/icons/fusion-reactor-equipment.png",
    placed_as_equipment_result = "fusion-reactor-equipment-mk2",
    flags = {"goes-to-main-inventory"},
    subgroup = "equipment",
    order = "a[energy-source]-b[fusion-reactor]",
    stack_size = 20
  }

})
