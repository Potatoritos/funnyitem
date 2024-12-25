scoreboard players set @s funnyitem_parry_timer 0
scoreboard players reset @s funnyitem_parry_hit_dmg

effect clear @s minecraft:resistance
attribute @s minecraft:knockback_resistance modifier remove funnyitem:parry_held
attribute @s minecraft:armor modifier remove funnyitem:parry_held
attribute @s minecraft:armor_toughness modifier remove funnyitem:parry_held
attribute @s minecraft:fall_damage_multiplier modifier remove funnyitem:parry_held

tag @s remove funnyitem_parry_deflected
