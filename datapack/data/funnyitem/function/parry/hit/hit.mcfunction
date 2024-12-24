scoreboard players operation .dmg_decimal funnyitem_parry_hit_dmg = @s funnyitem_parry_hit_dmg
scoreboard players operation .dmg_decimal funnyitem_parry_hit_dmg /= 2 funnyitem_math
scoreboard players operation @s funnyitem_stats_parry_hit_dmg += .dmg_decimal funnyitem_parry_hit_dmg
scoreboard players operation .dmg_decimal funnyitem_parry_hit_dmg %= 10 funnyitem_math

scoreboard players operation .dmg_int_part funnyitem_parry_hit_dmg = @s funnyitem_parry_hit_dmg
scoreboard players operation .dmg_int_part funnyitem_parry_hit_dmg /= 20 funnyitem_math

scoreboard players add @s funnyitem_stats_parry_hits 1

tellraw @s [{"text":"HurtTime: "},{"entity":"@s","nbt":"HurtTime"}]
tellraw @s [{"text":"timer: "},{"score":{"name":"@s","objective":"funnyitem_parry_timer"}}]


# note: this 7.. is also present in parry/deflect
execute if score @s funnyitem_parry_timer matches 7.. run return run function funnyitem:parry/hit/hit_precise

execute as @s[tag=!funnyitem_parry_deflected] if score @s funnyitem_parry_timer matches 6.. run return run function funnyitem:parry/hit/precise

function funnyitem:parry/hit/hit_normal
