#Auto Scanning Enemies
#Target=minecraft:player
#If a player from the enemy camp is found within range, the behavior changes according to the linear distance.

#region Team=RED
execute as @a[team=RED] at @s store result score @s NOW_SURR_ENEMY run execute if entity @a[team=BLU,distance=..20]
#endregion
#region Team=BLU
execute as @a[team=BLU] at @s store result score @s NOW_SURR_ENEMY run execute if entity @a[team=RED,distance=..20]
#endregion
