execute as @s[tag=!funnyitem_parry_held,scores={funnyitem_parry_cooldown=1}] run title @s actionbar "Parry ready"
execute as @s[scores={funnyitem_parry_cooldown=1..}] run scoreboard players remove @s funnyitem_parry_cooldown 1
