scoreboard objectives add funnyitem_settings dummy
scoreboard players add is_initialized funnyitem_settings 0
execute if score is_initialized funnyitem_settings matches 0 run function funnyitem:settings/reset

scoreboard objectives add funnyitem_ray_steps dummy
scoreboard objectives add funnyitem_ray_success dummy
scoreboard objectives add funnyitem_raycast dummy
scoreboard objectives add funnyitem_is_sneaking minecraft.custom:minecraft.sneak_time

function funnyitem:parry/load
function funnyitem:math/load
