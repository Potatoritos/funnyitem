scoreboard objectives add funnyitem_math dummy
scoreboard players set 0 funnyitem_math 0
scoreboard players set 2 funnyitem_math 2
scoreboard players set 10 funnyitem_math 10
scoreboard players set 20 funnyitem_math 20
scoreboard players set 1e9 funnyitem_math 1000000000

scoreboard objectives add funnyitem_settings dummy
scoreboard players set parry_normal_cooldown funnyitem_settings 40
scoreboard players set parry_precise_cooldown funnyitem_settings 40
scoreboard players set parry_fail_cooldown funnyitem_settings 60

function funnyitem:parry/load
