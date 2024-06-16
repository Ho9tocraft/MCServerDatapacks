#Enchanted Riposte(エンリポスト)
#define tag ERipo_Exec

execute as @s at @s run tellraw @a ["",{ "bold": false, "italic": false, "translate": "use.enchanted_riposte.name", "fallback": "%1$s used \"Enchanted Riposte\".", "with": [ { "selector": "@s" }]}]
execute as @s at @s run tag @s add ERipo_Exec
#region team=RED
execute as @s[team=RED] at @s as @e[team=BLU,distance=..3,sort=nearest,limit=1] at @s run damage @s 50.4 indirect_magic by @a[team=RED,tag=ERipo_Exec,limit=1]
#endregion
#region team=BLU
execute as @s[team=BLU] at @s as @e[team=RED,distance=..3,sort=nearest,limit=1] at @s run damage @s 50.4 indirect_magic by @a[team=BLU,tag=ERipo_Exec,limit=1]
#endregion
#region PostProcess
# Particles
# LIMIT BREAK Accumulate
execute as @s at @s if score @s LB_CHARGE matches 96..99 run scoreboard players add @s LB_CHARGE 1
execute as @s at @s if score @s LB_CHARGE matches ..95 run scoreboard players add @s LB_CHARGE 5
# Recast Timer
execute as @s at @s run scoreboard players set @s WS_RECAST_T 30
execute as @s at @s if score @s MG_RECAST_T matches 0..29 run scoreboard players set @s MG_RECAST_T 30
execute as @s at @s if score @s AB_RECAST_T matches 0..29 run scoreboard players set @s AB_RECAST_T 30
execute as @s at @s if score @s LB_RECAST_T matches 0..29 run scoreboard players set @s LB_RECAST_T 30
# Remove Tag for Detectors
execute as @s[tag=ERipo_Exec] at @s run tag @s remove ERipo_Exec
# Convert Item to "Enchanted Zwerchhau"
execute as @s at @s run item modify entity @s hotbar.1 ho9tocraft:jobs/red_mage/extras/weapon_skills/with_manafication/ws_combo_2
#endregion
