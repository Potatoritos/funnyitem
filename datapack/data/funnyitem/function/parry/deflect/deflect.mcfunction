summon marker ~ ~ ~ {Tags:["funnyitem_parry_motion"]}
execute as @e[type=marker,tag=funnyitem_parry_motion,limit=1] positioned 0.0 0.0 0.0 run function funnyitem:parry/deflect/motion

summon arrow ~ ~ ~ {Tags:["funnyitem_parry_arrow"]}

# data modify storage funnyitem:storage arrow set from entity @s {}
tag @a[tag=funnyitem_parry_deflecting,limit=1] add funnyitem_parry_deflected

# https://minecraft.wiki/w/Arrow#Damage
execute store result score dmg funnyitem_parry_arrow_calc run data get storage funnyitem:storage arrow.damage 100
scoreboard players operation new_dmg funnyitem_parry_arrow_calc = dmg funnyitem_parry_arrow_calc
execute store result score is_crit funnyitem_parry_arrow_calc run data get storage funnyitem:storage arrow.crit

# if power >= 1, dmg += power/2 + 0.5
execute store result score power funnyitem_parry_arrow_calc run data get storage funnyitem:storage arrow.weapon.components."minecraft:enchantments".levels."minecraft:power" 100
scoreboard players operation power funnyitem_parry_arrow_calc /= 2 funnyitem_math
execute if score power funnyitem_parry_arrow_calc matches 1.. run scoreboard players add power funnyitem_parry_arrow_calc 50
scoreboard players operation dmg funnyitem_parry_arrow_calc += power funnyitem_parry_arrow_calc

# dmg += random(0..dmg/2) + 2
scoreboard players operation max_crit funnyitem_parry_arrow_calc = dmg funnyitem_parry_arrow_calc
scoreboard players add max_crit funnyitem_parry_arrow_calc 200
execute store result score crit funnyitem_parry_arrow_calc run random value 1..1000000000
scoreboard players operation crit funnyitem_parry_arrow_calc %= max_crit funnyitem_parry_arrow_calc
scoreboard players operation crit funnyitem_parry_arrow_calc /= 2 funnyitem_math
scoreboard players operation dmg funnyitem_parry_arrow_calc += crit funnyitem_parry_arrow_calc

# dmg *= speed
# speed is from parry/arrow_ray/start
scoreboard players operation dmg funnyitem_parry_arrow_calc *= speed funnyitem_parry_arrow_calc
scoreboard players operation dmg funnyitem_parry_arrow_calc /= 100 funnyitem_math

# round up
scoreboard players add dmg funnyitem_parry_arrow_calc 50
scoreboard players operation dmg funnyitem_parry_arrow_calc /= 100 funnyitem_math
scoreboard players operation dmg funnyitem_parry_arrow_calc *= 100 funnyitem_math

execute if score is_crit funnyitem_parry_arrow_calc matches 1 run scoreboard players operation dmg funnyitem_parry_arrow_calc += crit funnyitem_parry_arrow_calc

scoreboard players operation dmg funnyitem_parry_arrow_calc /= 10 funnyitem_math

execute if score dmg funnyitem_parry_arrow_calc matches 40.. run scoreboard players add new_dmg funnyitem_parry_arrow_calc 150
execute if score dmg funnyitem_parry_arrow_calc matches 60.. run scoreboard players add new_dmg funnyitem_parry_arrow_calc 150
execute if entity @a[tag=funnyitem_parry_deflecting,limit=1,scores={funnyitem_parry_timer=7..}] run scoreboard players add new_dmg funnyitem_parry_arrow_calc 150
scoreboard players add new_dmg funnyitem_parry_arrow_calc 150

scoreboard players operation @a[tag=funnyitem_parry_deflecting,limit=1] funnyitem_parry_hit_dmg = dmg funnyitem_parry_arrow_calc

execute as @e[type=arrow,tag=funnyitem_parry_arrow,limit=1] run function funnyitem:parry/deflect/arrow

kill @s
