data:extend({
    {
    type = "active-defense-equipment",
    name = "personal-laser-defense-equipment-mk2",
    sprite =
    {
      filename = "__base__/graphics/equipment/personal-laser-defense-equipment.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = "240kJ"
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      cooldown = 20,
      damage_modifier = 45,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 30,
      sound = make_laser_sounds(),
      ammo_type =
      {
        type = "projectile",
        category = "electric",
        energy_consumption = "200kJ",
        projectile = "laser",
        speed = 2,
        action =
        {
          {
            type = "direct",
            action_delivery =
            {
              {
                type = "projectile",
                projectile = "laser",
                starting_speed = 0.38
              }
            }
          }
        }
      }
    },
    automatic = true,
    categories = {"armor"}
  },
    {
      type = "equipment-grid",
      name = "extra-large-equipment-grid",
      width = 16,
      height = 16,
      equipment_categories = {"armor"}
    },
    {
      type = "generator-equipment",
      name = "fusion-reactor-equipment-mk2",
      sprite =
      {
        filename = "__base__/graphics/equipment/fusion-reactor-equipment.png",
        width = 128,
        height = 128,
        priority = "medium"
      },
      shape =
      {
        width = 4,
        height = 4,
        type = "full"
      },
      energy_source =
      {
        type = "electric",
        usage_priority = "primary-output"
      },
      power = "20MW",
      categories = {"armor"}
    },
    {
    type = "solar-panel-equipment",
    name = "solar-panel-equipment",
    sprite =
    {
      filename = "__base__/graphics/equipment/solar-panel-equipment.png",
      width = 32,
      height = 32,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "1MW",
    categories = {"armor"}
  }
  })
