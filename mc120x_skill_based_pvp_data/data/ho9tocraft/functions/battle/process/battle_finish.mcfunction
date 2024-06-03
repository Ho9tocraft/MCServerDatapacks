execute as @a[team=RED] at @s run scoreboard players operation ^VPHandler RESULT_RED += @s TEAMKILL_BLU
execute as @a[team=BLU] at @s run scoreboard players operation ^VPHandler RESULT_BLU += @s TEAMKILL_RED
title @a times 1s 5s 1s
title @a subtitle {"text": "Time Up!", "color": "white"}
title @a title ["", {"text": "Result","color": "yellow"},{"text": ": "},{"score": {"name": "^VPHandler", "objective": "RESULT_RED"}, "color": "red"},{"text": "-"},{"score": {"name": "^VPHandler", "objective": "RESULT_BLU"}, "color": "blue"}]
scoreboard players set ^VPHandler BATTLE_COND 2
schedule function ho9tocraft:battle/process/battle_postprocess 7s
