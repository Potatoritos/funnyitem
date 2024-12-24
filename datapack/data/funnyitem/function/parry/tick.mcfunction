execute as @a[scores={funnyitem_parry_cooldown=1..}] run function funnyitem:parry/subtract_cooldown
execute as @a[tag=funnyitem_parry_held] at @s run function funnyitem:parry/active_tick
execute as @a[scores={funnyitem_parry_result_timer=1..}] run function funnyitem:parry/subtract_result_timer
execute as @a[scores={funnyitem_parry_timer=1..},tag=!funnyitem_parry_held] run function funnyitem:parry/fail

tag @a remove funnyitem_parry_held
