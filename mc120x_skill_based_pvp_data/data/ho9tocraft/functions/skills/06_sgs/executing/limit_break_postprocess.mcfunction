#LIMIT BREAK Postprocess
execute as @a[tag=FullUltima_Exec,team=RED] at @s as @e[team=BLU,distance=..15] at @s run damage @s 30.0 ho9tocraft:limit_break_magic by @a[team=RED,tag=FullUltima_Exec,sort=nearest,limit=1]
execute as @a[tag=FullUltima_Exec,team=BLU] at @s as @e[team=RED,distance=..15] at @s run damage @s 30.0 ho9tocraft:limit_break_magic by @a[team=BLU,tag=FullUltima_Exec,sort=nearest,limit=1]
execute as @a[tag=FullUltima_Exec] at @s run effect clear @s slowness
execute as @a[tag=FullUltima_Exec] at @s run tag @s remove FullUltima_Exec
