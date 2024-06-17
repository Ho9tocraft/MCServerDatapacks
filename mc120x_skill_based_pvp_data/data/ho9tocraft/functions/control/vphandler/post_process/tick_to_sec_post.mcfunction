#Scoreboard TICK_ROOP Reset to 1
scoreboard players set ^VPHandler TICK_ROOP 1
scoreboard players add ^VPHandler LB_C_TIMING 1
execute if score ^VPHandler LB_C_TIMING matches 10 if predicate ho9tocraft:random_controller/rand_half run scoreboard players add @a[scores={LB_CHARGE=..99}] LB_CHARGE 1
execute if score ^VPHandler LB_C_TIMING matches 10 run scoreboard players set ^VPHandler LB_C_TIMING 1
# Give Emerald
execute as @a[team=RED] at @s if score @s death matches 1.. if score ^VPHandler BATTLE_COND matches 0..2 run give @a[team=BLU] emerald 1
execute as @a[team=RED] at @s if score @s death matches 1.. if score ^VPHandler BATTLE_COND matches 0..2 if predicate ho9tocraft:random_controller/rand_1_5 run give @a[team=BLU] emerald 1
execute as @a[team=BLU] at @s if score @s death matches 1.. if score ^VPHandler BATTLE_COND matches 0..2 run give @a[team=RED] emerald 1
execute as @a[team=BLU] at @s if score @s death matches 1.. if score ^VPHandler BATTLE_COND matches 0..2 if predicate ho9tocraft:random_controller/rand_1_5 run give @a[team=RED] emerald 1
# LIGHTFLOOD DEATH
execute as @e[type=!villager,tag=BRose_EFFECT] at @s if score @s DEATH_TIMER matches ..550 if predicate ho9tocraft:random_controller/rand_half run scoreboard players add @s DEATH_TIMER 50
execute as @e[type=!villager,tag=BRose_EFFECT] at @s if score @s DEATH_TIMER matches 551..599 if predicate ho9tocraft:random_controller/rand_half run scoreboard players add @s DEATH_TIMER 1
execute as @a[scores={death=1..}] at @s run scoreboard players set @s death 0
