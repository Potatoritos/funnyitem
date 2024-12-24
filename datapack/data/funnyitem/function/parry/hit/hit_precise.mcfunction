execute if score @s funnyitem_parry_hit_dmg matches 0..9 run function funnyitem:parry/hit/precise { color: "gray", duration_ticks: 20, effect_level: 1 }
execute if score @s funnyitem_parry_hit_dmg matches 10..39 run function funnyitem:parry/hit/precise { color: "red", duration_ticks: 20, effect_level: 2 }
execute if score @s funnyitem_parry_hit_dmg matches 40..79 run function funnyitem:parry/hit/precise { color: "dark_red", duration_ticks: 20, effect_level: 3 }
execute if score @s funnyitem_parry_hit_dmg matches 80..159 run function funnyitem:parry/hit/precise { color: "dark_purple", duration_ticks: 30, effect_level: 4 }
execute if score @s funnyitem_parry_hit_dmg matches 160..639 run function funnyitem:parry/hit/precise { color: "dark_blue", duration_ticks: 40, effect_level: 5 }
execute if score @s funnyitem_parry_hit_dmg matches 640.. run function funnyitem:parry/hit/precise { color: "black", duration_ticks: 40, effect_level: 6 }

# playsound funnyitem:parry.hit.precise player @a ~ ~ ~ 1 2
playsound minecraft:block.anvil.land player @a ~ ~ ~ 1 2

scoreboard players add @s funnyitem_stats_parry_precise_hits 1

scoreboard players operation @s funnyitem_parry_cooldown = parry_precise_cooldown funnyitem_settings
function funnyitem:parry/end
