#Vercure III Exec

#region team=RED
execute as @s[team=RED] at @s as @e[team=RED,type=!#undead,distance=..30] at @s run effect give @s instant_health 1 3 true
#endregion
#region team=BLU
execute as @s[team=BLU] at @s as @e[team=BLU,type=!#undead,distance=..30] at @s run effect give @s instant_health 1 3 true
#endregion
#region PostProcess
# Particles
# MP Cost
execute as @s at @s run scoreboard players remove @s NOW_MP 500
# Remove Exec. User Spec.
execute as @s[tag=Red_Magic_Cast] at @s run tag @s remove Red_Magic_Cast
#endregion
