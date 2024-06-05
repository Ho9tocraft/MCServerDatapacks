#The Blackest Night(ブラックナイト)

#region MainProcess
execute as @s at @s run effect give @s resistance 10 1 true
execute as @s at @s run effect give @s absorption 10 4 true
execute as @s at @s run effect give @s regeneration 3 3 true
#endregion
#region PostProcess
execute as @s at @s run scoreboard players remove @s NOW_MP 3000
execute as @s at @s run scoreboard players set @s AB_RECAST_T 300
#endregion
