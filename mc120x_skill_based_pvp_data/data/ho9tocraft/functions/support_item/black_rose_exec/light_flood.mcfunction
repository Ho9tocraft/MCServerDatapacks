#LIGHT FLOOD (光の氾濫)
execute as @e[type=!villager,tag=BRose_EFFECT,tag=C_Wish_EFFECT] at @s run tag @s remove C_Wish_EFFECT
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run effect clear @s absorption
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run effect clear @s conduit_power
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run effect clear @s dolphins_grace
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run effect clear @s fire_resistance
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run effect clear @s haste
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run effect clear @s health_boost
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run effect clear @s instant_health
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run effect clear @s invisibility
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run effect clear @s luck
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run effect clear @s night_vision
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run effect clear @s regeneration
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run effect clear @s resistance
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run effect clear @s saturation
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run effect clear @s speed
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run effect clear @s strength
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run effect clear @s water_breathing
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run effect give @s hunger infinite 255 false
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run effect give @s unluck infinite 255 false
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run effect give @s weakness infinite 255 false
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run clear @s shield
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run clear @s arrow
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run clear @s tipped_arrow
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run clear @s emerald
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run clear @s wither_rose
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run clear @s potion
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run clear @s ender_pearl
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run clear @s orange_dye
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run clear @s baked_potato
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run clear @s golden_apple
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run clear @s enchanted_golden_apple
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run clear @s golden_carrot
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run clear @s beacon
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run clear @s gunpowder
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run clear @s stone_pickaxe
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run clear @s cooked_beef
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run clear @s cooked_chicken
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run clear @s cooked_cod
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run clear @s cooked_mutton
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run clear @s cooked_porkchop
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run clear @s cooked_rabbit
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run clear @s cooked_salmon
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run scoreboard players set @s NOW_MP 0
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run scoreboard players set @s LB_CHARGE 0
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run scoreboard players set @s LB_RECAST_T 2147483647
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run scoreboard players set @s PROC_TIMER_AB 0
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run scoreboard players set @s PROC_TIMER_MG 0
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run scoreboard players set @s PROC_TIMER_WS 0
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run scoreboard players set @s AB_RECAST_T 2147483647
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run scoreboard players set @s AB_RECAST_V 2147483647
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run scoreboard players set @s AR_RECAST_T 2147483647
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run scoreboard players set @s AR_RECAST_V 2147483647
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run scoreboard players set @s MG_RECAST_T 2147483647
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run scoreboard players set @s MG_RECAST_V 2147483647
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run scoreboard players set @s WS_RECAST_T 2147483647
execute as @e[type=!villager,tag=BRose_EFFECT] at @s run scoreboard players set @s WS_RECAST_V 2147483647
execute as @e[type=!villager,tag=BRose_EFFECT] at @s if score @s DEATH_TIMER matches ..560 if predicate ho9tocraft:random_controller/rand_half run scoreboard players add @s DEATH_TIMER 40
execute as @e[type=!villager,tag=BRose_EFFECT] at @s if score @s DEATH_TIMER matches 561..580 if predicate ho9tocraft:random_controller/rand_half run scoreboard players add @s DEATH_TIMER 20
execute as @e[type=!villager,tag=BRose_EFFECT] at @s if score @s DEATH_TIMER matches 581..590 if predicate ho9tocraft:random_controller/rand_half run scoreboard players add @s DEATH_TIMER 10
execute as @e[type=!villager,tag=BRose_EFFECT] at @s if score @s DEATH_TIMER matches 591..595 if predicate ho9tocraft:random_controller/rand_half run scoreboard players add @s DEATH_TIMER 5
execute as @e[type=!villager,tag=BRose_EFFECT] at @s if score @s DEATH_TIMER matches 596..599 if predicate ho9tocraft:random_controller/rand_half run scoreboard players add @s DEATH_TIMER 1
execute as @e[type=!villager,tag=BRose_EFFECT] at @s if score @s DEATH_TIMER matches 600 run damage @s 2147483647 ho9tocraft:ngeffect/death by @a[tag=BRose_Exec,limit=1]
