$scoreboard players set @s funnyitem_parry_result_timer $(duration_ticks)
$title @s times 0t 0t $(duration_ticks)t
$title @s subtitle [{"text":"HIT ","color":"$(color)","bold":true},{"score":{"name":".dmg_int_part","objective":"funnyitem_parry_hit_dmg"}},{"text":"."},{"score":{"name":".dmg_decimal","objective":"funnyitem_parry_hit_dmg"}},{"text":"❤"},{"text":" PRECISE!","color":"gray","italic":true,"bold":false}]
title @s title ""
$function funnyitem:parry/hit/effect_$(effect_level)
