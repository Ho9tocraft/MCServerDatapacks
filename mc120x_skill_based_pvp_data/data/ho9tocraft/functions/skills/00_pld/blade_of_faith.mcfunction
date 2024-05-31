#Blade of Faith(ブレード・オブ・フェイス)
#define tag BoF_TarRED
#define tag BoF_TarBLU

execute as @s at @s run tag @s add HCCombo_Exec

#region team=RED
execute as @s[team=RED] at @s as @e[team=BLU,distance=..25,sort=nearest,limit=1] at @s run tag @s add BoF_TarBLU
execute as @s[team=RED] at @s as @e[tag=BoF_TarBLU,distance=..25,sort=nearest,limit=1] at @s run damage @s 27 indirect_magic by @a[team=RED,tag=HCCombo_Exec,sort=nearest,limit=1] from @a[team=RED,tag=HCCombo_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s as @e[tag=BoF_TarBLU,distance=..25,sort=nearest,limit=1] at @s as @e[team=BLU,tag=!BoF_TarBLU,distance=..5] at @s run damage @s 13.5 indirect_magic by @a[team=RED,tag=HCCombo_Exec,sort=nearest,limit=1] from @a[team=RED,tag=HCCombo_Exec,sort=nearest,limit=1]
#endregion
#region team=BLU
execute as @s[team=BLU] at @s as @e[team=RED,distance=..25,sort=nearest,limit=1] at @s run tag @s add BoF_TarRED
execute as @s[team=BLU] at @s as @e[tag=BoF_TarRED,distance=..25,sort=nearest,limit=1] at @s run damage @s 27 indirect_magic by @a[team=BLU,tag=HCCombo_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=HCCombo_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s as @e[tag=BoF_TarRED,distance=..25,sort=nearest,limit=1] at @s as @e[team=RED,tag=!BoF_TarRED,distance=..5] at @s run damage @s 13.5 indirect_magic by @a[team=BLU,tag=HCCombo_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=HCCombo_Exec,sort=nearest,limit=1]
#endregion
#region PostProcess
# Particles
# LIMIT BREAK Accumulate
execute as @s at @s if score @s LB_CHARGE matches 96..99 run scoreboard players add @s LB_CHARGE 1
execute as @s at @s if score @s LB_CHARGE matches ..95 run scoreboard players add @s LB_CHARGE 5
# Recast Timer
execute as @s at @s if score @s WS_RECAST_T matches 0..49 run scoreboard players set @s WS_RECAST_T 50
execute as @s at @s run scoreboard players set @s MG_RECAST_T 50
execute as @s at @s if score @s AB_RECAST_T matches 0..49 run scoreboard players set @s AB_RECAST_T 50
execute as @s at @s if score @s LB_RECAST_T matches 0..49 run scoreboard players set @s LB_RECAST_T 50
# Remove Tag for Detectors
execute as @s[tag=HCCombo_Exec] at @s run tag @s remove HCCombo_Exec
execute as @e[tag=BoF_TarRED] at @s run tag @s remove BoF_TarRED
execute as @e[tag=BoF_TarBLU] at @s run tag @s remove BoF_TarBLU
# MP Cost
execute as @s at @s run scoreboard players remove @s NOW_MP 1000
# Convert Item to "Blade of Truth"
execute as @s at @s run item modify entity @s hotbar.2 ho9tocraft:jobs/paladin/extras/blade_of_truth
#endregion
