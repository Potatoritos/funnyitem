scoreboard players set @s funnyitem_parry_timer 0

say end

scoreboard players reset @s funnyitem_parry_hit_dmg

effect clear @s minecraft:resistance
attribute @s minecraft:knockback_resistance modifier remove funnyitem_parry
attribute @s minecraft:armor modifier remove funnyitem_parry
attribute @s minecraft:armor_toughness modifier remove funnyitem_parry
attribute @s minecraft:entity_interaction_range modifier remove funnyitem_parry
attribute @s minecraft:fall_damage_multiplier modifier remove funnyitem_parry

