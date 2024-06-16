#Enchanted Moulinet(エンムーリネ)
#define tag EMoul_Exec

execute as @s at @s run tellraw @a ["",{ "bold": false, "italic": false, "translate": "use.enchanted_moulinet.name", "fallback": "%1$s used \"Enchanted Moulinet\".", "with": [ { "selector": "@s" }]}]
execute as @s at @s run tag @s add EMoul_Exec
#region team=RED
execute as @s[team=RED] at @s as @e[team=BLU,distance=..8] at @s run damage @s 23.4 indirect_magic by @a[team=RED,tag=EMoul_Exec,limit=1]
#endregion
#region team=BLU
execute as @s[team=BLU] at @s as @e[team=RED,distance=..8] at @s run damage @s 23.4 indirect_magic by @a[team=BLU,tag=EMoul_Exec,limit=1]
#endregion
#region PostProcess
# Particles
# LIMIT BREAK Accumulate
execute as @s at @s if score @s LB_CHARGE matches 96..99 run scoreboard players add @s LB_CHARGE 1
execute as @s at @s if score @s LB_CHARGE matches ..95 run scoreboard players add @s LB_CHARGE 5
# Recast Timer
execute as @s at @s if score @s MG_RECAST_T matches 0..29 run scoreboard players set @s WS_RECAST_T 30
execute as @s at @s run scoreboard players set @s MG_RECAST_T 30
execute as @s at @s if score @s AB_RECAST_T matches 0..29 run scoreboard players set @s AB_RECAST_T 30
execute as @s at @s if score @s LB_RECAST_T matches 0..29 run scoreboard players set @s LB_RECAST_T 30
# Remove Exec. User Spec.
execute as @s[tag=EMoul_Exec] at @s run tag @s remove EMoul_Exec
# Convert Item to "Verholy(When Active "ShiftWhite")" or "Verflare(When Active "ShiftBlack")"
execute as @s at @s run scoreboard players set @s PROC_TIMER_WS 1200
execute as @s[tag=ShiftWhite] at @s run item modify entity @s hotbar.1 ho9tocraft:jobs/red_mage/extras/common/weapon_skills/verholy_ws_direct
execute as @s[tag=ShiftWhite] at @s run item modify entity @s hotbar.2 ho9tocraft:jobs/red_mage/extras/common/magics/verholy_mg
execute as @s[tag=ShiftBlack] at @s run item modify entity @s hotbar.1 ho9tocraft:jobs/red_mage/extras/common/weapon_skills/verflare_ws_direct
execute as @s[tag=ShiftBlack] at @s run item modify entity @s hotbar.2 ho9tocraft:jobs/red_mage/extras/common/magics/verflare_mg
#endregion
