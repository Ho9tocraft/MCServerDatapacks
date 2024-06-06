#Holy Circle Exec.
#define tag HCircle_Exec

execute as @s at @s run tag @s add HCircle_Exec

#region team=RED
execute as @s[team=RED] at @s if score @s CAST_TIMER matches 0 as @e[team=BLU,distance=..5,sort=nearest] at @s run damage @s 18 minecraft:indirect_magic by @a[team=RED,tag=HCircle_Exec,limit=1] from @a[team=RED,tag=HCircle_Exec,limit=1]
#endregion
#region team=BLU
execute as @s[team=BLU] at @s if score @s CAST_TIMER matches 0 as @e[team=RED,distance=..5,sort=nearest] at @s run damage @s 18 minecraft:indirect_magic by @a[team=BLU,tag=HCircle_Exec,limit=1] from @a[team=BLU,tag=HCircle_Exec,limit=1]
#endregion
#region PostProcess
# Particles
execute as @s at @s run particle explosion ~ ~5 ~ 5 5 5 1 100 normal @a[distance=..30]
execute as @s at @s run particle flash ~ ~5 ~ 5 5 5 1 125 normal @a[distance=..30]
# MP Cost
execute as @s at @s run scoreboard players remove @s NOW_MP 1000
# LIMIT BREAK Accumulate
execute as @s at @s if score @s LB_CHARGE matches 96..99 run scoreboard players add @s LB_CHARGE 1
execute as @s at @s if score @s LB_CHARGE matches 91..95 run scoreboard players add @s LB_CHARGE 5
execute as @s at @s if score @s LB_CHARGE matches 81..90 run scoreboard players add @s LB_CHARGE 10
execute as @s at @s if score @s LB_CHARGE matches ..80 run scoreboard players add @s LB_CHARGE 20
execute as @s[tag=SOATH_EFFECT] at @s if score @s LB_CHARGE matches 96..99 run scoreboard players add @s LB_CHARGE 1
execute as @s[tag=SOATH_EFFECT] at @s if score @s LB_CHARGE matches 91..95 run scoreboard players add @s LB_CHARGE 5
execute as @s[tag=SOATH_EFFECT] at @s if score @s LB_CHARGE matches ..90 run scoreboard players add @s LB_CHARGE 10
# Convert Item to "Confiteor"
execute as @s at @s run scoreboard players set @s PROC_TIMER_MG 600
execute as @s at @s run item modify entity @s hotbar.2 ho9tocraft:jobs/paladin/extras/confiteor
# Remove Exec. User Spec.
execute as @s[tag=HCircle_Exec] at @s run tag @s remove HCircle_Exec
execute as @s[tag=HCircle_Cast] at @s run tag @s remove HCircle_Cast
#endregion
