function #ho9tocraft:battle/stage_postprocess
execute as @a at @s run item replace entity @s enderchest.0 with air
execute as @a at @s run item replace entity @s enderchest.1 with air
execute as @a at @s run item replace entity @s enderchest.2 with air
execute as @a at @s run item replace entity @s enderchest.3 with air
execute as @a at @s run item replace entity @s enderchest.4 with air
execute as @a at @s run item replace entity @s enderchest.5 with air
execute as @a at @s run item replace entity @s enderchest.6 with air
execute as @a at @s run item replace entity @s enderchest.7 with air
execute as @a at @s run item replace entity @s enderchest.8 with air
execute as @a at @s run item replace entity @s enderchest.9 with air
execute as @a at @s run item replace entity @s enderchest.10 with air
execute as @a at @s run item replace entity @s enderchest.11 with air
execute as @a at @s run item replace entity @s enderchest.12 with air
execute as @a at @s run item replace entity @s enderchest.13 with air
execute as @a at @s run item replace entity @s enderchest.14 with air
execute as @a at @s run item replace entity @s enderchest.15 with air
execute as @a at @s run item replace entity @s enderchest.16 with air
execute as @a at @s run item replace entity @s enderchest.17 with air
execute as @a at @s run item replace entity @s enderchest.18 with air
execute as @a at @s run item replace entity @s enderchest.19 with air
execute as @a at @s run item replace entity @s enderchest.20 with air
execute as @a at @s run item replace entity @s enderchest.21 with air
execute as @a at @s run item replace entity @s enderchest.22 with air
execute as @a at @s run item replace entity @s enderchest.23 with air
execute as @a at @s run item replace entity @s enderchest.24 with air
execute as @a at @s run item replace entity @s enderchest.25 with air
execute as @a at @s run item replace entity @s enderchest.26 with air
execute as @a at @s run function minecraft:job_bind_reset
execute as @a at @s in minecraft:overworld run tp @s -8 64 8
function ho9tocraft:battle/stages/respawn_points/lobby

title @a times 1s 5s 1s
title @a subtitle ["", {"text": "Result","color": "yellow"},{"text": ": "},{"score": {"name": "^VPHandler", "objective": "RESULT_RED"}, "color": "red"},{"text": "-"},{"score": {"name": "^VPHandler", "objective": "RESULT_BLU"}, "color": "blue"}]
execute if score ^VPHandler RESULT_BLU = ^VPHandler RESULT_RED run title @a title {"text": "Draw Game..."}
execute if score ^VPHandler RESULT_BLU > ^VPHandler RESULT_RED run title @a title ["", {"text": "Team "},{"text": "Blue","color": "blue"},{"text": " Win!"}]
execute if score ^VPHandler RESULT_BLU < ^VPHandler RESULT_RED run title @a title ["", {"text": "Team "},{"text": "Red","color": "red"},{"text": " Win!"}]

scoreboard objectives setdisplay sidebar.team.blue
scoreboard objectives setdisplay sidebar.team.red
execute if score ^VPHandler BATTLE_COND matches 2 run function minecraft:tcond_reset
scoreboard players set ^VPHandler RESULT_RED 0
scoreboard players set ^VPHandler RESULT_BLU 0
scoreboard players set ^VPHandler BATTLE_COND -1
scoreboard players set ^VPHandler BATTLE_STAGE -1
scoreboard players set ^VPHandler BATTLE_TIMER -1
bossbar set ho9tocraft:battle_timer visible false
bossbar set ho9tocraft:battle_timer color yellow
bossbar set ho9tocraft:battle_timer max 2400
bossbar set ho9tocraft:battle_timer value 0
bossbar set ho9tocraft:battle_timer name {"translate": "bossbar.battle_timer.init", "fallback": "Warming up Time"}
team leave *
gamemode adventure @a[gamemode=spectator]
effect give @s saturation infinite 1 true
