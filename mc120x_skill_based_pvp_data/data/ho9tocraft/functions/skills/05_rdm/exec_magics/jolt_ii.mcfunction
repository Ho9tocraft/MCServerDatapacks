#Jolt II Exec
#define tag JoltII_Exec

execute as @s at @s run tag @s add JoltII_Exec

#region team=RED
execute as @s[team=RED] at @s if score @s CAST_TIMER matches 0 as @e[team=BLU,distance=..25,sort=nearest,limit=1] at @s run damage @s 32.0 indirect_magic by @a[team=RED,tag=JoltII_Exec,limit=1]
#endregion
#region team=BLU
execute as @s[team=BLU] at @s if score @s CAST_TIMER matches 0 as @e[team=RED,distance=..25,sort=nearest,limit=1] at @s run damage @s 32.0 indirect_magic by @a[team=BLU,tag=JoltII_Exec,limit=1]
#endregion
#region PostProcess
# Particles
# MP Cost
execute as @s at @s run scoreboard players remove @s NOW_MP 400
# LIMIT BREAK Accumulate
execute as @s at @s if score @s LB_CHARGE matches ..97 run scoreboard players add @s LB_CHARGE 3
execute as @s at @s if score @s LB_CHARGE matches 98..99 run scoreboard players add @s LB_CHARGE 1
# Convert Item to "Veraero III (When Active "ShiftWhite")" or "Verthunder III (When Active "ShiftBlack")"
execute as @s[tag=ShiftWhite] at @s run item modify entity @s hotbar.2 ho9tocraft:jobs/red_mage/extras/magics/without_manafication/mg_combo_2a
execute as @s[tag=ShiftBlack] at @s run item modify entity @s hotbar.2 ho9tocraft:jobs/red_mage/extras/magics/without_manafication/mg_combo_2b
# Remove Exec. User Spec.
execute as @s[tag=JoltII_Exec] at @s run tag @s remove JoltII_Exec
execute as @s[tag=Red_Magic_Cast] at @s run tag @s remove Red_Magic_Cast
#endregion

