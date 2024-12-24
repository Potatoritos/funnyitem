function funnyitem:parry/end

scoreboard players operation @s funnyitem_parry_cooldown = parry_fail_cooldown funnyitem_settings

scoreboard players set @s funnyitem_parry_result_timer 12
title @s times 0t 2t 10t
title @s subtitle {"text":"PARRY FAIL","color":"gray"}
title @s title ""
