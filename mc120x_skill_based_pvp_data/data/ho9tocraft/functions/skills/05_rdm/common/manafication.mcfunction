#Manafication(マナフィケーション)
#define tag Mana_EFFECT Manafication Effect Flag

execute as @s at @s run tag @s add Mana_EFFECT
execute as @s at @s run scoreboard players set @s PROC_TIMER_AB 1800
execute as @s at @s run scoreboard players set @s AB_RECAST_T 50
execute as @s at @s run item modify entity @s hotbar.3 ho9tocraft:jobs/red_mage/extras/abilities/vercure_iii
