#Tutorial: End
execute as @s[scores={Tutorial_Read=1}] at @s run function job_bind_reset
execute as @s[scores={Tutorial_Read=1}] at @s in minecraft:overworld run tp @s -8 70 8
execute as @s[scores={Tutorial_Read=1}] at @s run tellraw @s { "bold": true, "italic": false, "translate": "guide.07", "fallback": "Have you got a rough understanding of the game system?" }
execute as @s[scores={Tutorial_Read=1}] at @s run tellraw @s { "bold": true, "italic": false, "translate": "guide.08", "fallback": "If you want to try out the detailed skill rotation, you can do so by selecting a job from the \"Oak sign\" in the lobby and right-clicking on the sign that says \"Training\".", "color": "#FFDC00" }
execute as @s[scores={Tutorial_Read=1}] at @s run scoreboard players set @s Tutorial_Read 0
