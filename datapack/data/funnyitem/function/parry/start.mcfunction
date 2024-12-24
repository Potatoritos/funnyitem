scoreboard players set @s funnyitem_parry_timer 8

effect give @s minecraft:resistance 1 4 true

attribute @s minecraft:knockback_resistance modifier add funnyitem:parry_held 1000 add_value
attribute @s minecraft:armor modifier add funnyitem:parry_held -1 add_multiplied_total
attribute @s minecraft:armor_toughness modifier add funnyitem:parry_held -1 add_multiplied_total
attribute @s minecraft:fall_damage_multiplier modifier add funnyitem:parry_held -0.99 add_multiplied_total

scoreboard players add @s funnyitem_stats_parry_activations 1

