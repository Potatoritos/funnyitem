execute unless block ~ ~ ~ air run return 1
scoreboard players remove steps funnyitem_raycast 1
scoreboard players remove length funnyitem_parry_arrow_calc 1

# particle dust{color:[1.0,0.3,0.3],scale:1} ~ ~ ~ 0 0 0 0 1 force @a

execute positioned ~ ~-0.9 ~ if entity @a[tag=funnyitem_parry_deflecting,distance=..1.6,limit=1] run function funnyitem:parry/arrow_ray/check

$execute if score length funnyitem_parry_arrow_calc matches 1.. if score success funnyitem_raycast matches 0 if score steps funnyitem_raycast matches 1.. positioned ~$(x) ~$(y) ~$(z) run function funnyitem:parry/arrow_ray/ray with storage funnyitem:storage arrow_raycast
