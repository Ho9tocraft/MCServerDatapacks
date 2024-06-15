#Tutorial Begin
execute as @s at @s run scoreboard players set @s Tutorial_Read -1
execute as @s at @s run gamemode adventure @s
execute as @s at @s run function paladin
execute as @s at @s in ho9tocraft:pvp_battlefield run tp @s -136 61 56
execute as @s at @s run tellraw @s { "bold": false, "italic": false, "fallback": "To you who have just landed on this server for the first time.", "translate": "guide.01", "color": "#E6B422" }
execute as @s at @s run tellraw @s ["", { "bold": false, "italic": false, "fallback": "You are a new recruit, so to speak, and you think the basic rule of PvP is ", "translate": "guide.02.prefix" }, { "bold": true, "italic": false, "fallback": "\"just swing a sword, shoot a bow, and reduce the enemy's HP to 0\".", "translate": "guide.02.thought", "color": "#E2041B" }, { "bold": false, "italic": false, "fallback": "", "translate": "guide.02.suffix" }]
execute as @s at @s run tellraw @s ["", { "bold": false, "italic": false, "fallback": "However, such \"no brainer\" tactics are ", "translate": "guide.03.prefix" }, { "bold": true, "italic": false, "fallback": "basically meaningless in PvP on this server. ", "translate": "guide.03.middle", "color": "#E2041B" }, { "bold": false, "italic": false, "fallback": "Therefore, you must first understand the basic rules of this server.", "translate": "guide.03.suffix", "color": "#C3D825" }]
execute as @s at @s run tellraw @s ["", { "bold": false, "italic": false, "fallback": "This server is a fan server based on Final Fantasy 14, with a PvP system similar to that one. ", "translate": "guide.04.first" }, { "bold": true, "italic": false, "fallback": "You cannot participate in PvP without any weapons or armor, and are treated as a spectator.", "translate": "guide.04.second", "color": "#DCDDDD" }]
execute as @s at @s run scoreboard players enable @s Tutorial_Read
execute as @s at @s run tellraw @s { "bold": true, "italic": false, "fallback": "Click here to finish reading.", "translate": "guide.confirm", "clickEvent": { "action": "run_command", "value": "/trigger Tutorial_Read set 1" }, "color": "#00FF7F" }
