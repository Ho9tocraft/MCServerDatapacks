#Veraero II Exec
#define tag VeraeroII_Exec

execute as @s at @s run tellraw @a ["",{ "bold": false, "italic": false, "translate": "use.veraero_ii.name", "fallback": "%1$s used \"Veraero II\".", "with": [ { "selector": "@s" }]}]
execute as @s at @s run tag @s add VeraeroII_Exec

#region team=RED
execute as @s[team=RED] at @s if score @s CAST_TIMER matches 0 as @e[team=BLU,distance=..25,sort=nearest,limit=1] at @s run particle dust_color_transition{from_color:[0.000,0.663,0.408],scale:1,to_color:[0.655,0.824,0.553]} ~ ~ ~ 5 1 5 1 1500 normal @a[distance=..30]
execute as @s[team=RED] at @s if score @s CAST_TIMER matches 0 as @e[team=BLU,distance=..25,sort=nearest,limit=1] at @s as @e[team=BLU,distance=..5] at @s run damage @s 14.0 indirect_magic by @a[team=RED,tag=VeraeroII_Exec,limit=1]
#endregion
#region team=BLU
execute as @s[team=BLU] at @s if score @s CAST_TIMER matches 0 as @e[team=RED,distance=..25,sort=nearest,limit=1] at @s run particle dust_color_transition{from_color:[0.000,0.663,0.408],scale:1,to_color:[0.655,0.824,0.553]} ~ ~ ~ 5 1 5 1 1500 normal @a[distance=..30]
execute as @s[team=BLU] at @s if score @s CAST_TIMER matches 0 as @e[team=RED,distance=..25,sort=nearest,limit=1] at @s as @e[team=RED,distance=..5] at @s run damage @s 14.0 indirect_magic by @a[team=BLU,tag=VeraeroII_Exec,limit=1]
#endregion
#region PostProcess
# Particles
# MP Cost
execute as @s at @s run scoreboard players remove @s NOW_MP 400
# LIMIT BREAK Accumulate
execute as @s at @s if score @s LB_CHARGE matches ..95 run scoreboard players add @s LB_CHARGE 5
execute as @s at @s if score @s LB_CHARGE matches 96..99 run scoreboard players add @s LB_CHARGE 1
# Convert Item to "Enchanted Moulinet"
execute as @s at @s run item modify entity @s hotbar.2 ho9tocraft:jobs/red_mage/extras/magics/with_manafication/mg_combo_3
# Remove Exec. User Spec.
execute as @s[tag=VeraeroII_Exec] at @s run tag @s remove VeraeroII_Exec
execute as @s[tag=Red_Magic_Cast] at @s run tag @s remove Red_Magic_Cast
#endregion
