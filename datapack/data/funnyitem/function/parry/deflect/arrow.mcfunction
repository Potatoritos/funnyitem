tp @s ^ ^ ^
data modify entity @s Motion set from storage funnyitem:storage Motion
data modify entity @s Owner set from entity @a[tag=funnyitem_parry_deflecting,limit=1] UUID
data modify entity @s crit set value 1b

execute store result entity @s damage double 0.01 run scoreboard players get new_dmg funnyitem_parry_arrow_calc

data modify entity @s PierceLevel set from storage funnyitem:storage arrow.PierceLevel
data modify entity @s Fire set from storage funnyitem:storage arrow.Fire
data modify entity @s weapon set from storage funnyitem:storage arrow.weapon
data modify entity @s Tags set from storage funnyitem:storage arrow.Tags
data modify entity @s pickup set from storage funnyitem:storage arrow.pickup
data modify entity @s item set from storage funnyitem:storage arrow.item

tag @s remove funnyitem_parry_arrow
