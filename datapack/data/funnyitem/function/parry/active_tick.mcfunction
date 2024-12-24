execute if score @s funnyitem_parry_cooldown matches 1.. run return run function funnyitem:parry/display_cooldown

scoreboard players add @s funnyitem_parry_timer 0
execute if score @s funnyitem_parry_timer matches ..0 run function funnyitem:parry/start

say active_tick

# tag @s add funnyitem_parry_deflecting
# execute as @e[type=arrow,distance=..4] at @s run function funnyitem:parry/arrow_ray/start
# tag @s remove funnyitem_parry_deflecting
# execute as @s[tag=funnyitem_parry_deflected] run return run function funnyitem:parry/hit

execute as @s[nbt={HurtTime:9s}] run return run function funnyitem:parry/hit/hit

execute if score @s funnyitem_parry_timer matches 1 run return run function funnyitem:parry/fail

scoreboard players remove @s funnyitem_parry_timer 1