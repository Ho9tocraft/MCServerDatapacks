#Enchanted Zwerchhau(エンツヴェルクハウ)
#define tag EZwei_Exec

execute as @s at @s run tellraw @a ["",{ "bold": false, "italic": false, "translate": "use.enchanted_redoublement.name", "fallback": "%1$s used \"Enchanted Redoublement\".", "with": [ { "selector": "@s" }]}]
execute as @s at @s run tag @s add EZwei_Exec
#region team=RED
execute as @s[team=RED] at @s as @e[team=BLU,distance=..3,sort=nearest,limit=1] at @s run damage @s 61.2 indirect_magic by @a[team=RED,tag=EZwei_Exec,limit=1]
#endregion
#region team=BLU
execute as @s[team=BLU] at @s as @e[team=RED,distance=..3,sort=nearest,limit=1] at @s run damage @s 61.2 indirect_magic by @a[team=BLU,tag=EZwei_Exec,limit=1]
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
execute as @s[tag=EZwei_Exec] at @s run tag @s remove EZwei_Exec
# Convert Item to "Verflare" or "Verholy"
execute as @s at @s run scoreboard players set @s PROC_TIMER_MG 1200
execute as @s[tag=ShiftBlack] at @s run item modify entity @s hotbar.1 ho9tocraft:jobs/red_mage/extras/common/weapon_skills/verflare_ws
execute as @s[tag=ShiftBlack] at @s run item modify entity @s hotbar.2 ho9tocraft:jobs/red_mage/extras/common/magics/verflare_mg_direct
execute as @s[tag=ShiftWhite] at @s run item modify entity @s hotbar.1 ho9tocraft:jobs/red_mage/extras/common/weapon_skills/verholy_ws
execute as @s[tag=ShiftWhite] at @s run item modify entity @s hotbar.2 ho9tocraft:jobs/red_mage/extras/common/magics/verholy_mg_direct
execute as @s[tag=!ShiftBlack,tag=!ShiftWhite] at @s run item modify entity @s hotbar.1 ho9tocraft:jobs/red_mage/extras/common/weapon_skills/verflare_ws
execute as @s[tag=!ShiftBlack,tag=!ShiftWhite] at @s run item modify entity @s hotbar.2 ho9tocraft:jobs/red_mage/extras/common/magics/verholy_mg_direct
#endregion
