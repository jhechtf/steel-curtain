require("util")
godzillabiterscale = 1.5;
godzilla_biter_tint1 = {r=0.8, g=0.1, b=0.8, a=0.75}
godzilla_biter_tint2 = {r=0.88, g=0.24, b=0.24, a=0.9}

godzillaspitterscale = 1.5;
godzilla_spitter_tint1 = {r=0.8, g=0.1, b=0.8, a=0.75}
godzilla_spitter_tint2 = {r=0.88, g=0.24, b=0.24, a=0.9}

data:extend({
    {
    type = "unit-spawner",
    name = "biter-spawner",
    icon = "__base__/graphics/icons/biter-spawner.png",
    flags = {"placeable-player", "placeable-enemy", "not-repairable"},
    max_health = 350,
    order="b-b-g",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        decrease = 2,
        percent = 15
      },
      {
        type = "explosion",
        decrease = 5,
        percent = 15,
      },
      {
        type = "fire",
        decrease = 3,
        percent = 60,
      }
    },
    working_sound = {
      sound =
      {
        {
          filename = "__base__/sound/creatures/spawner.ogg",
          volume = 1.0
        }
      },
      apparent_volume = 2
    },
    dying_sound =
    {
      {
        filename = "__base__/sound/creatures/spawner-death-1.ogg",
        volume = 1.0
      },
      {
        filename = "__base__/sound/creatures/spawner-death-2.ogg",
        volume = 1.0
      }
    },
    healing_per_tick = 0.02,
    collision_box = {{-3.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-3.5, -2.5}, {2.5, 2.5}},
    -- in ticks per 1 pu
    pollution_absorbtion_absolute = 20,
    pollution_absorbtion_proportional = 0.01,
    corpse = "biter-spawner-corpse",
    dying_explosion = "blood-explosion-huge",
    max_count_of_owned_units = 7,
    max_friends_around_to_spawn = 5,
    animations =
    {
      spawner_idle_animation(0, biter_spawner_tint),
      spawner_idle_animation(1, biter_spawner_tint),
      spawner_idle_animation(2, biter_spawner_tint),
      spawner_idle_animation(3, biter_spawner_tint)
    },
    result_units = (function()
                     local res = {}
                     res[1] = {"small-biter", {{0.0, 0.3}, {0.6, 0.0}}}
                     if not data.is_demo then
                       -- from evolution_factor 0.3 the weight for medium-biter is linearly rising from 0 to 0.3
                       -- this means for example that when the evolution_factor is 0.45 the probability of spawning
                       -- a small biter is 66% while probability for medium biter is 33%.
                       res[2] = {"medium-biter", {{0.2, 0.0}, {0.6, 0.3}, {0.7, 0.1}}}
                       -- for evolution factor of 1 the spawning probabilities are: small-biter 0%, medium-biter 1/8, big-biter 4/8, behemoth biter 3/8
                       res[3] = {"big-biter", {{0.5, 0.0}, {1.0, 0.4}}}
                       res[4] = {"behemoth-biter", {{0.9, 0.0}, {1.0, 0.3}}}
                       res[5] = {"godzilla-biter", {{0.9, 0.0}, {1.0, 0.3}}}
                     end
                     return res
                   end)(),
    -- With zero evolution the spawn rate is 6 seconds, with max evolution it is 2.5 seconds
    spawning_cooldown = {360, 150},
    spawning_radius = 10,
    spawning_spacing = 3,
    max_spawn_shift = 0,
    max_richness_for_spawn_shift = 100,
    autoplace = enemy_spawner_autoplace(0),
    call_for_help_radius = 50
  },
    {
    type = "unit",
    name = "godzilla-biter",
    order="b-b-e",
    icon = "__base__/graphics/icons/behemoth-biter.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 10000,
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        decrease = 150,
        percent = 40
      },
      {
        type = "explosion",
        decrease = 160,
        percent = 50
      }
    },
    spawning_time_modifier = 12,
    healing_per_tick = 0.4,
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.7, -1.5}, {0.7, 0.3}},
    sticker_box = {{-0.6, -0.8}, {0.6, 0}},
    distraction_cooldown = 300,
    min_pursue_time = 10 * 60,
    max_pursue_distance = 50,
    attack_parameters =
    {
      type = "projectile",
      range = 1.5,
      cooldown = 25,
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_type(90),
      sound =  make_biter_roars(0.8),
      animation = biterattackanimation(godzillabiterscale, godzilla_biter_tint1, godzilla_biter_tint2)
    },
    vision_distance = 30,
    movement_speed = 0.17,
    distance_per_frame = 0.2,
    -- in pu
    pollution_to_join_attack = 20000,
    corpse = "behemoth-biter-corpse",
    dying_explosion = "blood-explosion-big",
    working_sound = make_biter_calls(0.7),
    dying_sound = make_biter_dying_sounds(0.8),
    run_animation = biterrunanimation(godzillabiterscale, godzilla_biter_tint1, godzilla_biter_tint2)
  }
  })
