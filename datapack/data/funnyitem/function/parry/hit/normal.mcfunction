execute if score @s funnyitem_parry_hit_dmg matches 0..19 run function funnyitem:parry/hit/normal_1
execute if score @s funnyitem_parry_hit_dmg matches 20..79 run function funnyitem:parry/hit/normal_2
execute if score @s funnyitem_parry_hit_dmg matches 80..159 run function funnyitem:parry/hit/normal_3
execute if score @s funnyitem_parry_hit_dmg matches 160..319 run function funnyitem:parry/hit/normal_4
execute if score @s funnyitem_parry_hit_dmg matches 320..1279 run function funnyitem:parry/hit/normal_5
execute if score @s funnyitem_parry_hit_dmg matches 1280.. run function funnyitem:parry/hit/normal_6

playsound minecraft:block.anvil.land player @a ~ ~ ~ 1 2

scoreboard players operation @s funnyitem_parry_cooldown = parry_normal_cooldown funnyitem_settings
function funnyitem:parry/end
