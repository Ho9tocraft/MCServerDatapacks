$execute as @s[type=!#undead] at @s run effect give @s instant_health 1 $(heal) true
$execute as @s[type=#undead] at @s run effect give @s instant_damage 1 $(heal) true
$execute as @s at @s run effect give @s absorption $(second) $(barrier) true
