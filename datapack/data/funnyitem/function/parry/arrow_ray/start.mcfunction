execute if entity @a[tag=funnyitem_parry_deflected,limit=1] run return 1
execute if entity @s[nbt={inGround:1b}] run return 1

scoreboard players set steps funnyitem_raycast 16
scoreboard players set success funnyitem_raycast 0

data modify storage funnyitem:storage arrow set from entity @s {}

execute store result score sx funnyitem_parry_arrow_calc run data get storage funnyitem:storage arrow.Motion[0] 10000
execute store result score sy funnyitem_parry_arrow_calc run data get storage funnyitem:storage arrow.Motion[1] 10000
execute store result score sz funnyitem_parry_arrow_calc run data get storage funnyitem:storage arrow.Motion[2] 10000

execute store result storage funnyitem:storage dist_in.x float 0.01 run data get storage funnyitem:storage arrow.Motion[0] 100
execute store result storage funnyitem:storage dist_in.y float 0.01 run data get storage funnyitem:storage arrow.Motion[1] 100
execute store result storage funnyitem:storage dist_in.z float 0.01 run data get storage funnyitem:storage arrow.Motion[2] 100
function funnyitem:math/distance with storage funnyitem:storage dist_in

execute store result score length funnyitem_parry_arrow_calc run data get storage funnyitem:storage dist_out 100

# for use in parry/deflect
scoreboard players operation speed funnyitem_parry_arrow_calc = length funnyitem_parry_arrow_calc

scoreboard players operation sx funnyitem_parry_arrow_calc /= length funnyitem_parry_arrow_calc
scoreboard players operation sy funnyitem_parry_arrow_calc /= length funnyitem_parry_arrow_calc
scoreboard players operation sz funnyitem_parry_arrow_calc /= length funnyitem_parry_arrow_calc

execute store result storage funnyitem:storage arrow_raycast.x float 0.005 run scoreboard players get sx funnyitem_parry_arrow_calc
execute store result storage funnyitem:storage arrow_raycast.y float 0.005 run scoreboard players get sy funnyitem_parry_arrow_calc
execute store result storage funnyitem:storage arrow_raycast.z float 0.005 run scoreboard players get sz funnyitem_parry_arrow_calc

scoreboard players operation length funnyitem_parry_arrow_calc /= 50 funnyitem_math
scoreboard players add length funnyitem_parry_arrow_calc 2

function funnyitem:parry/arrow_ray/ray with storage funnyitem:storage arrow_raycast
