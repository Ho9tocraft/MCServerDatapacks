#Battle Process
#define loot_table ho9tocraft:supply_chest_small
#define loot_table ho9tocraft:supply_chest_large

execute store result bossbar ho9tocraft:battle_timer value run scoreboard players get ^VPHandler BATTLE_TIMER
execute if score ^VPHandler BATTLE_COND matches 0..1 if score ^VPHandler BATTLE_STAGE matches 0 run function ho9tocraft:battle/stages/safe_areas/stage_00
execute if score ^VPHandler BATTLE_TIMER matches 1.. run scoreboard players remove ^VPHandler BATTLE_TIMER 1
execute if score ^VPHandler BATTLE_TIMER matches 0 if score ^VPHandler BATTLE_COND matches 0 run scoreboard players set ^VPHandler BATTLE_TIMER 24000
execute if score ^VPHandler BATTLE_TIMER matches 24000 if score ^VPHandler BATTLE_COND matches 0 run bossbar set ho9tocraft:battle_timer color purple
execute if score ^VPHandler BATTLE_TIMER matches 24000 if score ^VPHandler BATTLE_COND matches 0 run bossbar set ho9tocraft:battle_timer max 24000
execute if score ^VPHandler BATTLE_TIMER matches 24000 if score ^VPHandler BATTLE_COND matches 0 run bossbar set ho9tocraft:battle_timer value 24000
execute if score ^VPHandler BATTLE_TIMER matches 24000 if score ^VPHandler BATTLE_COND matches 0 run bossbar set ho9tocraft:battle_timer name {"translate": "bossbar.battle_timer.main", "fallback": "Remaining Time"}
execute if score ^VPHandler BATTLE_TIMER matches 24000 if score ^VPHandler BATTLE_COND matches 0 run title @a times 1s 5s 1s
execute if score ^VPHandler BATTLE_TIMER matches 24000 if score ^VPHandler BATTLE_COND matches 0 run title @a title ["", {"color": "blue","text": "Battle"},{"text": " "},{"color": "red","text": "Start"}]
execute if score ^VPHandler BATTLE_TIMER matches 24000 if score ^VPHandler BATTLE_COND matches 0 run playsound entity.wither.spawn player @a ~ ~ ~ 1.0 1.0 0.5
execute if score ^VPHandler BATTLE_TIMER matches 24000 if score ^VPHandler BATTLE_COND matches 0 run item replace entity @a[gamemode=adventure] hotbar.8 with cooked_beef 8
execute if score ^VPHandler BATTLE_TIMER matches 24000 if score ^VPHandler BATTLE_COND matches 0 run scoreboard players set ^VPHandler BATTLE_COND 1
execute if score ^VPHandler BATTLE_COND matches 1 run scoreboard players operation ^VPHandler B_SPL_CLC = ^VPHandler BATTLE_TIMER
execute if score ^VPHandler BATTLE_COND matches 1 run scoreboard players operation ^VPHandler BMVILGR_CLC = ^VPHandler BATTLE_TIMER
execute if score ^VPHandler BATTLE_COND matches 1 run scoreboard players operation ^VPHandler B_SPL_CLC %= ^VPHandler B_SUPPLY
execute if score ^VPHandler BATTLE_COND matches 1 run scoreboard players operation ^VPHandler BMVILGR_CLC %= ^VPHandler B_MVILLAGER
execute if score ^VPHandler BATTLE_COND matches 1 if score ^VPHandler BATTLE_TIMER matches 1.. if score ^VPHandler B_SPL_CLC matches 0 if score ^VPHandler BATTLE_STAGE matches 0 as @a at @s run tellraw @s ["",{"text": "Supply Chest","color": "yellow"},{"text": " Refilled!"}]
execute if score ^VPHandler BATTLE_COND matches 1 if score ^VPHandler BATTLE_TIMER matches 1.. if score ^VPHandler B_SPL_CLC matches 0 if score ^VPHandler BATTLE_STAGE matches 0 as @a at @s run playsound entity.player.levelup player @s ~ ~ ~ 1.0 1.0 0.5
execute if score ^VPHandler BATTLE_COND matches 1 if score ^VPHandler BATTLE_TIMER matches 1.. if score ^VPHandler B_SPL_CLC matches 0 if score ^VPHandler BATTLE_STAGE matches 0 run function ho9tocraft:battle/supply/stage_00_loot
execute if score ^VPHandler BATTLE_COND matches 1 if score ^VPHandler BATTLE_TIMER matches 1.. if score ^VPHandler BMVILGR_CLC matches 0 if score ^VPHandler BATTLE_STAGE matches 0 if predicate ho9tocraft:random_controller/rand_miracle_villager run function ho9tocraft:battle/process/miracle_villager/stage_00_villager

execute if score ^VPHandler BATTLE_TIMER matches 0 if score ^VPHandler BATTLE_COND matches 1 run function ho9tocraft:battle/process/battle_finish
