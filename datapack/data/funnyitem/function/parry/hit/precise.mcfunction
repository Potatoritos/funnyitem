execute if score @s funnyitem_parry_hit_dmg matches 0..9 run function funnyitem:parry/hit/precise_1
execute if score @s funnyitem_parry_hit_dmg matches 10..39 run function funnyitem:parry/hit/precise_2
execute if score @s funnyitem_parry_hit_dmg matches 40..79 run function funnyitem:parry/hit/precise_3
execute if score @s funnyitem_parry_hit_dmg matches 80..159 run function funnyitem:parry/hit/precise_4
execute if score @s funnyitem_parry_hit_dmg matches 160..639 run function funnyitem:parry/hit/precise_5
execute if score @s funnyitem_parry_hit_dmg matches 640.. run function funnyitem:parry/hit/precise_6

# playsound funnyitem:parry.hit.precise player @a ~ ~ ~ 1 2
playsound minecraft:block.anvil.land player @a ~ ~ ~ 1 2

scoreboard players add @s funnyitem_stats_parry_precise_hits 1

scoreboard players operation @s funnyitem_parry_cooldown = parry_precise_cooldown funnyitem_settings
function funnyitem:parry/end
