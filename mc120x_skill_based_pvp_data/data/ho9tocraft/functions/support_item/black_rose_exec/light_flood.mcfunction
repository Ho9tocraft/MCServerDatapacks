#LIGHT FLOOD (光の氾濫)
execute as @e[type=!villager,tag=BRose_EFFECT,tag=C_Wish_EFFECT,team=!Spectate] at @s run tag @s remove C_Wish_EFFECT
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run effect clear @s absorption
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run effect clear @s conduit_power
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run effect clear @s dolphins_grace
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run effect clear @s fire_resistance
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run effect clear @s haste
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run effect clear @s health_boost
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run effect clear @s instant_health
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run effect clear @s invisibility
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run effect clear @s luck
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run effect clear @s night_vision
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run effect clear @s regeneration
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run effect clear @s resistance
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run effect clear @s saturation
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run effect clear @s speed
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run effect clear @s strength
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run effect clear @s water_breathing
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run effect give @s hunger infinite 255 false
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run effect give @s unluck infinite 255 false
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run effect give @s weakness infinite 255 false
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run clear @s shield
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run clear @s arrow
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run clear @s armor_stand
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run clear @s tnt
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run clear @s glow_ink_sac
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run clear @s tipped_arrow
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run clear @s emerald
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run clear @s wither_rose
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run clear @s potion
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run clear @s ender_pearl
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run clear @s orange_dye
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run clear @s baked_potato
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run clear @s golden_apple
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run clear @s enchanted_golden_apple
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run clear @s golden_carrot
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run clear @s beacon
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run clear @s gunpowder
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run clear @s stone_pickaxe
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run clear @s cooked_beef
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run clear @s cooked_chicken
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run clear @s cooked_cod
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run clear @s cooked_mutton
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run clear @s cooked_porkchop
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run clear @s cooked_rabbit
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s run clear @s cooked_salmon
# LIGHTFLOOD DEATH
execute if score ^VPHandler RAND_DAMAGE matches 1.. run scoreboard players set ^VPHandler RAND_DAMAGE 0
execute if score ^VPHandler BATTLE_COND matches 0..1 store result score ^VPHandler RAND_DAMAGE run random value 1..36
execute as @e[type=!villager,tag=BRose_EFFECT] at @s if score ^VPHandler TICK_ROOP matches 3 if predicate ho9tocraft:random_controller/rand_3_8 run function ho9tocraft:support_item/black_rose_exec/death_wrapper
execute as @e[type=!villager,tag=BRose_EFFECT] at @s if score ^VPHandler TICK_ROOP matches 8 if predicate ho9tocraft:random_controller/rand_3_8 run function ho9tocraft:support_item/black_rose_exec/death_wrapper
execute as @e[type=!villager,tag=BRose_EFFECT] at @s if score ^VPHandler TICK_ROOP matches 13 if predicate ho9tocraft:random_controller/rand_3_8 run function ho9tocraft:support_item/black_rose_exec/death_wrapper
execute as @e[type=!villager,tag=BRose_EFFECT] at @s if score ^VPHandler TICK_ROOP matches 18 if predicate ho9tocraft:random_controller/rand_3_8 run function ho9tocraft:support_item/black_rose_exec/death_wrapper
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s if score @s DEATH_TIMER matches 600.. run damage @s 2147483647 ho9tocraft:ngeffect/death
execute as @e[type=!villager,tag=BRose_EFFECT,team=!Spectate] at @s if score @s DEATH_TIMER matches 600.. run scoreboard players set @s DEATH_TIMER 0
