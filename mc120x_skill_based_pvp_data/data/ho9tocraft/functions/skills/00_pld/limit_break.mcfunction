#LIMIT BREAK

#region team=RED
execute as @s[team=RED] at @s run effect give @e[team=RED,distance=..30] absorption 30 4 false
execute as @s[team=RED] at @s run effect give @e[team=RED,distance=..30] resistance 30 2 false
#endregion
#region team=BLU
execute as @s[team=BLU] at @s run effect give @e[team=BLU,distance=..30] absorption 30 4 false
execute as @s[team=BLU] at @s run effect give @e[team=BLU,distance=..30] resistance 30 2 false
#endregion
#region PostProcess
execute as @s at @s run scoreboard players set @s LB_CHARGE 0
execute as @s at @s run scoreboard players set @s LB_RECAST_T 50
#endregion

