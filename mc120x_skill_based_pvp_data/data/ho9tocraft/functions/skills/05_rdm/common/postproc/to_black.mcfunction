execute as @s[tag=ShiftWhite] at @s run tag @s remove ShiftWhite
execute as @s at @s run tag @s add ShiftBlack
execute as @s at @s run scoreboard players set @s RDM_ShiftEffect 600
execute as @s at @s run scoreboard players set @s SPEFF_DONE 1
