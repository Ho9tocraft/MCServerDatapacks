#Hissatsu: Guren(必殺剣・紅蓮)
#define tag Guren_Exec

execute as @s at @s run tag @s add Guren_Exec
#region team=RED
execute as @s[team=RED] at @s rotated ~ 0 positioned ^ ^ ^1 as @e[team=BLU,distance=..1] at @s run damage @s 80.0 player_attack by @a[team=RED,tag=Guren_Exec,sort=nearest,limit=1] from @a[team=RED,tag=Guren_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s rotated ~ 0 positioned ^ ^ ^2 as @e[team=BLU,distance=..1] at @s run damage @s 80.0 player_attack by @a[team=RED,tag=Guren_Exec,sort=nearest,limit=1] from @a[team=RED,tag=Guren_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s rotated ~ 0 positioned ^ ^ ^3 as @e[team=BLU,distance=..1] at @s run damage @s 80.0 player_attack by @a[team=RED,tag=Guren_Exec,sort=nearest,limit=1] from @a[team=RED,tag=Guren_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s rotated ~ 0 positioned ^ ^ ^4 as @e[team=BLU,distance=..1] at @s run damage @s 80.0 player_attack by @a[team=RED,tag=Guren_Exec,sort=nearest,limit=1] from @a[team=RED,tag=Guren_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s rotated ~ 0 positioned ^ ^ ^5 as @e[team=BLU,distance=..1] at @s run damage @s 80.0 player_attack by @a[team=RED,tag=Guren_Exec,sort=nearest,limit=1] from @a[team=RED,tag=Guren_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s rotated ~ 0 positioned ^ ^ ^6 as @e[team=BLU,distance=..1] at @s run damage @s 80.0 player_attack by @a[team=RED,tag=Guren_Exec,sort=nearest,limit=1] from @a[team=RED,tag=Guren_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s rotated ~ 0 positioned ^ ^ ^7 as @e[team=BLU,distance=..1] at @s run damage @s 80.0 player_attack by @a[team=RED,tag=Guren_Exec,sort=nearest,limit=1] from @a[team=RED,tag=Guren_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s rotated ~ 0 positioned ^ ^ ^8 as @e[team=BLU,distance=..1] at @s run damage @s 80.0 player_attack by @a[team=RED,tag=Guren_Exec,sort=nearest,limit=1] from @a[team=RED,tag=Guren_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s rotated ~ 0 positioned ^ ^ ^9 as @e[team=BLU,distance=..1] at @s run damage @s 80.0 player_attack by @a[team=RED,tag=Guren_Exec,sort=nearest,limit=1] from @a[team=RED,tag=Guren_Exec,sort=nearest,limit=1]
#endregion
#region team=BLU
execute as @s[team=BLU] at @s rotated ~ 0 positioned ^ ^ ^1 as @e[team=RED,distance=..1] at @s run damage @s 80.0 player_attack by @a[team=BLU,tag=Guren_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=Guren_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s rotated ~ 0 positioned ^ ^ ^2 as @e[team=RED,distance=..1] at @s run damage @s 80.0 player_attack by @a[team=BLU,tag=Guren_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=Guren_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s rotated ~ 0 positioned ^ ^ ^3 as @e[team=RED,distance=..1] at @s run damage @s 80.0 player_attack by @a[team=BLU,tag=Guren_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=Guren_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s rotated ~ 0 positioned ^ ^ ^4 as @e[team=RED,distance=..1] at @s run damage @s 80.0 player_attack by @a[team=BLU,tag=Guren_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=Guren_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s rotated ~ 0 positioned ^ ^ ^5 as @e[team=RED,distance=..1] at @s run damage @s 80.0 player_attack by @a[team=BLU,tag=Guren_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=Guren_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s rotated ~ 0 positioned ^ ^ ^6 as @e[team=RED,distance=..1] at @s run damage @s 80.0 player_attack by @a[team=BLU,tag=Guren_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=Guren_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s rotated ~ 0 positioned ^ ^ ^7 as @e[team=RED,distance=..1] at @s run damage @s 80.0 player_attack by @a[team=BLU,tag=Guren_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=Guren_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s rotated ~ 0 positioned ^ ^ ^8 as @e[team=RED,distance=..1] at @s run damage @s 80.0 player_attack by @a[team=BLU,tag=Guren_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=Guren_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s rotated ~ 0 positioned ^ ^ ^9 as @e[team=RED,distance=..1] at @s run damage @s 80.0 player_attack by @a[team=BLU,tag=Guren_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=Guren_Exec,sort=nearest,limit=1]
#endregion
#region PostProcess
# Particles
# Additional Effect
# LIMIT BREAK Accumulate
execute as @s[tag=!DIVPOS_EFFECT] at @s if score @s LB_CHARGE matches ..90 run scoreboard players add @s LB_CHARGE 10
execute as @s[tag=DIVPOS_EFFECT] at @s if score @s LB_CHARGE matches ..80 run scoreboard players add @s LB_CHARGE 20
execute as @s[tag=DIVPOS_EFFECT] at @s if score @s LB_CHARGE matches 81..90 run scoreboard players add @s LB_CHARGE 10
execute as @s at @s if score @s LB_CHARGE matches 91..99 run scoreboard players add @s LB_CHARGE 1
# Recast Timer
execute as @s at @s if score @s WS_RECAST_T matches 0..49 run scoreboard players set @s WS_RECAST_T 50
execute as @s[tag=DIVPOS_EFFECT] at @s run scoreboard players set @s MG_RECAST_T 50
execute as @s[tag=!DIVPOS_EFFECT] at @s run scoreboard players set @s MG_RECAST_T 200
execute as @s at @s if score @s AB_RECAST_T matches 0..49 run scoreboard players set @s AB_RECAST_T 50
execute as @s at @s if score @s LB_RECAST_T matches 0..49 run scoreboard players set @s LB_RECAST_T 50
# Remove Tag for Detectors
execute as @s[tag=Guren_Exec] at @s run tag @s remove Guren_Exec
# Convert Item to "Tenka Goken: Binary Star" when "Divine Possession" Activated
execute as @s[tag=DIVPOS_EFFECT] at @s run item modify entity @s hotbar.2 ho9tocraft:jobs/exorcist/extras/tenka_goken
execute as @s[tag=!DIVPOS_EFFECT] at @s run item modify entity @s hotbar.2 ho9tocraft:jobs/exorcist/extras/proc_end_mg
#endregion
