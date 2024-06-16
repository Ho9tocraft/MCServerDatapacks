#Corps-a-Corps(コル・ア・コル)
#define tag CaC_Exec

execute as @s at @s run tellraw @a ["",{ "bold": false, "italic": false, "translate": "use.corps_a_corps.name", "fallback": "%1$s used \"Corps-a-Corps\".", "with": [ { "selector": "@s" }]}]
execute as @s[tag=!STAGE_BOUND] at @s run tag @s add CaC_Exec
#region pre-moving Particles
#endregion
#region team=RED
execute as @s[team=RED,tag=!STAGE_BOUND] at @s run tp @s @e[team=BLU,distance=..25,sort=nearest,limit=1]
execute as @s[team=RED,tag=!STAGE_BOUND] at @s as @e[team=BLU,distance=..3,sort=nearest,limit=1] at @s run damage @s 46.8 player_attack by @a[team=RED,tag=CaC_Exec,limit=1]
#endregion
#region team=BLU
execute as @s[team=BLU,tag=!STAGE_BOUND] at @s run tp @s @e[team=RED,distance=..25,sort=nearest,limit=1]
execute as @s[team=BLU,tag=!STAGE_BOUND] at @s as @e[team=RED,distance=..3,sort=nearest,limit=1] at @s run damage @s 46.8 player_attack by @a[team=BLU,tag=CaC_Exec,limit=1]
#endregion
#region PostProcess
# Particles
# LIMIT BREAK Accumulate
execute as @s[tag=!STAGE_BOUND] at @s if score @s LB_CHARGE matches 96..99 run scoreboard players add @s LB_CHARGE 1
execute as @s[tag=!STAGE_BOUND] at @s if score @s LB_CHARGE matches ..95 run scoreboard players add @s LB_CHARGE 5
# Recast Timer
execute as @s[tag=!STAGE_BOUND] at @s run scoreboard players set @s WS_RECAST_T 20
execute as @s[tag=!STAGE_BOUND] at @s if score @s MG_RECAST_T matches 0..19 run scoreboard players set @s MG_RECAST_T 20
execute as @s[tag=!STAGE_BOUND] at @s if score @s AB_RECAST_T matches 0..19 run scoreboard players set @s AB_RECAST_T 20
execute as @s[tag=!STAGE_BOUND] at @s if score @s LB_RECAST_T matches 0..19 run scoreboard players set @s LB_RECAST_T 20
# Remove Tag for Detectors
execute as @s[tag=!STAGE_BOUND,tag=CaC_Exec] at @s run tag @s remove CaC_Exec
# Convert Item to "Riposte" or "Enchanted Riposte(When you used "Manafication")"
execute as @s[tag=!STAGE_BOUND] at @s run scoreboard players set @s PROC_TIMER_WS 300
execute as @s[tag=!STAGE_BOUND,tag=Mana_EFFECT] at @s run scoreboard players add @s PROC_TIMER_WS 900
execute as @s[tag=!Mana_EFFECT] at @s run item modify entity @s hotbar.1 ho9tocraft:jobs/red_mage/extras/weapon_skills/without_manafication/ws_combo_1
execute as @s[tag=Mana_EFFECT] at @s run item modify entity @s hotbar.1 ho9tocraft:jobs/red_mage/extras/weapon_skills/with_manafication/ws_combo_1
#endregion
