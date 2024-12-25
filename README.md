Adds parrying to minecraft 1.21.4.

# Documentation

Make a sword able to parry by combining it with a shield in a smithing table.

Note that you cannot use offhand shields while holding an able-to-parry sword.

## Parrying

Hold right click to parry for up to 0.3s. Getting hit in this window ends the parry
and grants buffs based on the damage received.

Landing a Precise hit (getting hit within 0.1s) reduces the amount of damage needed
to attain buffs.

Buffs gained, given hit damage intervals (in hearts) and hit type: 

| Normal hit | Precise hit | Buffs |
| ---------- | ----------- | ----- |
| [0, 1) | [0, 0.5) | +1.5❤️ attack damage, +20% movement speed (1s) |
| [1, 4) | [0.5, 2) | +6❤️ attack damage, +40% movement speed (1s) |
| [4, 8) | [2, 4) | +9❤️ attack damage, +40% movement speed (1s) |
| [8, 16) | [4, 8) | +12❤️ attack damage, +40% movement speed (1.5s) |
| [16, 64) | [8, 32) | +15❤️ attack damage, +40% movement speed (2s) |
| [64, ∞) | [32, ∞) | +18❤️ attack damage, +40% movement speed (2s) |

(For reference: 1 strength level = +1.5❤️ attack damage, and 1 speed level = +20% movement speed)

Cooldowns (default—these are changeable in settings):
| Hit type | Cooldown |
| -------- | -------- |
| Normal   | 3s       |
| Precise  | 3s       |
| Fail     | 6s       |

Parries can also deflect arrows.
Parrying arrows increases their [damage NBT value](https://minecraft.wiki/w/Arrow#Damage)
by 1.5 and deflects them towards the direction you are facing.

This damage value further increases on certain (stacking) conditions:

| Condition | Damage NBT value increase |
| --------- | ------------------------- |
| The arrow deals ≥2 hearts of damage | 1.5 |
| The arrow deals ≥3 hearts of damage | 1.5 |
| You landed a precise hit | 1.5 |

Additional mechanics:
- You still take knockback from explosions while parrying
- Buff levels 2-6 (i.e., normal hit [1, ∞)) clear the wither effect
- Any amount of fall damage is set to count as 0.5 hearts
- Deflected arrows are critical hits (i.e, they have the [crit NBT tag](https://minecraft.wiki/w/Arrow#Damage))

## Settings

- `/scoreboard objectives setdisplay sidebar funnyitem_settings` to view settings
- `/scoreboard players set parry_normal_cooldown funnyitem_settings <cooldown in ticks>`
- `/scoreboard players set parry_precise_cooldown funnyitem_settings <cooldown in ticks>`
- `/scoreboard players set parry_fail_cooldown funnyitem_settings <cooldown in ticks>`

