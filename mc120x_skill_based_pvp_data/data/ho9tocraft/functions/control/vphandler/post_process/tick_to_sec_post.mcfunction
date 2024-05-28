#Scoreboard TICK_ROOP Reset to 1
scoreboard players set ^VPHandler TICK_ROOP 1
scoreboard players add ^VPHandler LB_C_TIMING 1
execute if score ^VPHandler LB_C_TIMING matches 10 if predicate ho9tocraft:random_controller/rand_half run scoreboard players add @a[scores={LB_CHARGE=..99}] LB_CHARGE 1
execute if score ^VPHandler LB_C_TIMING matches 10 run scoreboard players set ^VPHandler LB_C_TIMING 1
