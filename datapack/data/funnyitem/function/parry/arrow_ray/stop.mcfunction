scoreboard players set success funnyitem_raycast 1

execute if score @a[tag=funnyitem_parry_deflecting,limit=1] funnyitem_is_sneaking matches 0 at @a[tag=funnyitem_parry_deflecting,limit=1] positioned ~ ~1.6 ~ run return run function funnyitem:parry/deflect/deflect
execute if score @a[tag=funnyitem_parry_deflecting,limit=1] funnyitem_is_sneaking matches 1 at @a[tag=funnyitem_parry_deflecting,limit=1] positioned ~ ~1.3 ~ run function funnyitem:parry/deflect/deflect

