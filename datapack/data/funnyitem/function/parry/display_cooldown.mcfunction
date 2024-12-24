execute if score @s funnyitem_parry_result_timer matches 1.. run return fail

scoreboard players operation .s funnyitem_parry_cooldown = @s funnyitem_parry_cooldown
scoreboard players operation .s funnyitem_parry_cooldown /= 2 funnyitem_math
scoreboard players operation .ds funnyitem_parry_cooldown = .s funnyitem_parry_cooldown
scoreboard players operation .ds funnyitem_parry_cooldown %= 10 funnyitem_math
scoreboard players operation .s funnyitem_parry_cooldown /= 10 funnyitem_math

title @s times 0t 3t 0t
title @s subtitle [{"score":{"name":".s","objective":"funnyitem_parry_cooldown"},"color":"gray"},{"text":"."},{"score":{"name":".ds","objective":"funnyitem_parry_cooldown"}},{"text":"s"}]
title @s title ""

