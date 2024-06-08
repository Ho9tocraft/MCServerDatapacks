execute as @s[tag=GRENADE_RED] at @s as @e[team=BLU,distance=..10] at @s run damage @s 60.0 player_explosion by @a[team=RED,tag=GRENADE_Exec,sort=nearest,limit=1] from @a[team=RED,tag=GRENADE_Exec,sort=nearest,limit=1]
execute as @s[tag=GRENADE_BLU] at @s as @e[team=RED,distance=..10] at @s run damage @s 60.0 player_explosion by @a[team=BLU,tag=GRENADE_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=GRENADE_Exec,sort=nearest,limit=1]
execute as @s at @s as @p[tag=GRENADE_Exec] at @s run tag @s remove GRENADE_Exec
