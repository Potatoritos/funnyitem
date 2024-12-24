execute as @s[scores={funnyitem_parry_result_timer=1}] run function funnyitem:parry/hit/effect_end
execute as @s[scores={funnyitem_parry_result_timer=1..}] run scoreboard players remove @s funnyitem_parry_result_timer 1
