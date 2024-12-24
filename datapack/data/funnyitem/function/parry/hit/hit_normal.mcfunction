execute if score @s funnyitem_parry_hit_dmg matches 0..19 run function funnyitem:parry/hit/normal { color: "gray", duration_ticks: 20, effect_level: 1 }
execute if score @s funnyitem_parry_hit_dmg matches 20..79 run function funnyitem:parry/hit/normal { color: "red", duration_ticks: 20, effect_level: 2 }
execute if score @s funnyitem_parry_hit_dmg matches 80..159 run function funnyitem:parry/hit/normal { color: "dark_red", duration_ticks: 20, effect_level: 3 }
execute if score @s funnyitem_parry_hit_dmg matches 160..319 run function funnyitem:parry/hit/normal { color: "dark_purple", duration_ticks: 30, effect_level: 4 }
execute if score @s funnyitem_parry_hit_dmg matches 320..1279 run function funnyitem:parry/hit/normal { color: "dark_blue", duration_ticks: 40, effect_level: 5 }
execute if score @s funnyitem_parry_hit_dmg matches 1280.. run function funnyitem:parry/hit/normal { color: "black", duration_ticks: 40, effect_level: 6 }

playsound minecraft:block.anvil.land player @a ~ ~ ~ 1 2

scoreboard players operation @s funnyitem_parry_cooldown = parry_normal_cooldown funnyitem_settings
function funnyitem:parry/end

