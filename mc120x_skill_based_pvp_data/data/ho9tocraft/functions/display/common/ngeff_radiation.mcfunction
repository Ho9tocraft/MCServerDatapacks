#Radiation Effect
#define tag C_Wish_EFFECT

#region Under Effect Process
# team=RED
## IfScore Sector
#優先度: TIMER_0 > TIMER_1 > TIMER_2 > TIMER_3 > TIMER_4 > TIMER_5
execute as @e[type=armor_stand,tag=RACT_USER,team=RED,sort=nearest,limit=1] at @s as @e[team=BLU,distance=..30,tag=!RACT_EFFECT,tag=!C_Wish_EFFECT] at @s if score @s NGEFF_TIMER_0 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_0 600
execute as @e[type=armor_stand,tag=RACT_USER,team=RED,sort=nearest,limit=1] at @s as @e[team=BLU,distance=..30,tag=!RACT_EFFECT,tag=!C_Wish_EFFECT] at @s if score @s NGEFF_TIMER_1 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_1 600
execute as @e[type=armor_stand,tag=RACT_USER,team=RED,sort=nearest,limit=1] at @s as @e[team=BLU,distance=..30,tag=!RACT_EFFECT,tag=!C_Wish_EFFECT] at @s if score @s NGEFF_TIMER_2 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_2 600
execute as @e[type=armor_stand,tag=RACT_USER,team=RED,sort=nearest,limit=1] at @s as @e[team=BLU,distance=..30,tag=!RACT_EFFECT,tag=!C_Wish_EFFECT] at @s if score @s NGEFF_TIMER_3 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_3 600
execute as @e[type=armor_stand,tag=RACT_USER,team=RED,sort=nearest,limit=1] at @s as @e[team=BLU,distance=..30,tag=!RACT_EFFECT,tag=!C_Wish_EFFECT] at @s if score @s NGEFF_TIMER_4 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_4 600
execute as @e[type=armor_stand,tag=RACT_USER,team=RED,sort=nearest,limit=1] at @s as @e[team=BLU,distance=..30,tag=!RACT_EFFECT,tag=!C_Wish_EFFECT] at @s if score @s NGEFF_TIMER_5 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_5 600
execute as @e[type=armor_stand,tag=RACT_USER,team=RED,sort=nearest,limit=1] at @s as @e[team=BLU,distance=..30,tag=!C_Wish_EFFECT] at @s if score @s NGEFF_TIMER_0 matches 600 if score @s NGEFF_DONE matches 1 run tag @s add RACT_TIMER_0
execute as @e[type=armor_stand,tag=RACT_USER,team=RED,sort=nearest,limit=1] at @s as @e[team=BLU,distance=..30,tag=!C_Wish_EFFECT] at @s if score @s NGEFF_TIMER_1 matches 600 if score @s NGEFF_DONE matches 1 run tag @s add RACT_TIMER_1
execute as @e[type=armor_stand,tag=RACT_USER,team=RED,sort=nearest,limit=1] at @s as @e[team=BLU,distance=..30,tag=!C_Wish_EFFECT] at @s if score @s NGEFF_TIMER_2 matches 600 if score @s NGEFF_DONE matches 1 run tag @s add RACT_TIMER_2
execute as @e[type=armor_stand,tag=RACT_USER,team=RED,sort=nearest,limit=1] at @s as @e[team=BLU,distance=..30,tag=!C_Wish_EFFECT] at @s if score @s NGEFF_TIMER_3 matches 600 if score @s NGEFF_DONE matches 1 run tag @s add RACT_TIMER_3
execute as @e[type=armor_stand,tag=RACT_USER,team=RED,sort=nearest,limit=1] at @s as @e[team=BLU,distance=..30,tag=!C_Wish_EFFECT] at @s if score @s NGEFF_TIMER_4 matches 600 if score @s NGEFF_DONE matches 1 run tag @s add RACT_TIMER_4
execute as @e[type=armor_stand,tag=RACT_USER,team=RED,sort=nearest,limit=1] at @s as @e[team=BLU,distance=..30,tag=!C_Wish_EFFECT] at @s if score @s NGEFF_TIMER_5 matches 600 if score @s NGEFF_DONE matches 1 run tag @s add RACT_TIMER_5
execute as @e[type=armor_stand,tag=RACT_USER,team=RED,sort=nearest,limit=1] at @s as @e[team=BLU,distance=..30,tag=!RACT_EFFECT,tag=!C_Wish_EFFECT] at @s if score @s NGEFF_DONE matches 1 run tag @s add RACT_EFFECT
## Debuff Effect
execute as @e[team=RED,tag=RACT_EFFECT,tag=!C_Wish_EFFECT] at @s run damage @s 1.0 ho9tocraft:ngeffect/radiation
# team=BLU
## IfScore Sector
#優先度: TIMER_0 > TIMER_1 > TIMER_2 > TIMER_3 > TIMER_4 > TIMER_5
execute as @e[type=armor_stand,tag=RACT_USER,team=BLU,sort=nearest,limit=1] at @s as @e[team=RED,distance=..30,tag=!RACT_EFFECT,tag=!C_Wish_EFFECT] at @s if score @s NGEFF_TIMER_0 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_0 600
execute as @e[type=armor_stand,tag=RACT_USER,team=BLU,sort=nearest,limit=1] at @s as @e[team=RED,distance=..30,tag=!RACT_EFFECT,tag=!C_Wish_EFFECT] at @s if score @s NGEFF_TIMER_1 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_1 600
execute as @e[type=armor_stand,tag=RACT_USER,team=BLU,sort=nearest,limit=1] at @s as @e[team=RED,distance=..30,tag=!RACT_EFFECT,tag=!C_Wish_EFFECT] at @s if score @s NGEFF_TIMER_2 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_2 600
execute as @e[type=armor_stand,tag=RACT_USER,team=BLU,sort=nearest,limit=1] at @s as @e[team=RED,distance=..30,tag=!RACT_EFFECT,tag=!C_Wish_EFFECT] at @s if score @s NGEFF_TIMER_3 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_3 600
execute as @e[type=armor_stand,tag=RACT_USER,team=BLU,sort=nearest,limit=1] at @s as @e[team=RED,distance=..30,tag=!RACT_EFFECT,tag=!C_Wish_EFFECT] at @s if score @s NGEFF_TIMER_4 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_4 600
execute as @e[type=armor_stand,tag=RACT_USER,team=BLU,sort=nearest,limit=1] at @s as @e[team=RED,distance=..30,tag=!RACT_EFFECT,tag=!C_Wish_EFFECT] at @s if score @s NGEFF_TIMER_5 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_5 600
execute as @e[type=armor_stand,tag=RACT_USER,team=BLU,sort=nearest,limit=1] at @s as @e[team=RED,distance=..30,tag=!C_Wish_EFFECT] at @s if score @s NGEFF_TIMER_0 matches 600 if score @s NGEFF_DONE matches 1 run tag @s add RACT_TIMER_0
execute as @e[type=armor_stand,tag=RACT_USER,team=BLU,sort=nearest,limit=1] at @s as @e[team=RED,distance=..30,tag=!C_Wish_EFFECT] at @s if score @s NGEFF_TIMER_1 matches 600 if score @s NGEFF_DONE matches 1 run tag @s add RACT_TIMER_1
execute as @e[type=armor_stand,tag=RACT_USER,team=BLU,sort=nearest,limit=1] at @s as @e[team=RED,distance=..30,tag=!C_Wish_EFFECT] at @s if score @s NGEFF_TIMER_2 matches 600 if score @s NGEFF_DONE matches 1 run tag @s add RACT_TIMER_2
execute as @e[type=armor_stand,tag=RACT_USER,team=BLU,sort=nearest,limit=1] at @s as @e[team=RED,distance=..30,tag=!C_Wish_EFFECT] at @s if score @s NGEFF_TIMER_3 matches 600 if score @s NGEFF_DONE matches 1 run tag @s add RACT_TIMER_3
execute as @e[type=armor_stand,tag=RACT_USER,team=BLU,sort=nearest,limit=1] at @s as @e[team=RED,distance=..30,tag=!C_Wish_EFFECT] at @s if score @s NGEFF_TIMER_4 matches 600 if score @s NGEFF_DONE matches 1 run tag @s add RACT_TIMER_4
execute as @e[type=armor_stand,tag=RACT_USER,team=BLU,sort=nearest,limit=1] at @s as @e[team=RED,distance=..30,tag=!C_Wish_EFFECT] at @s if score @s NGEFF_TIMER_5 matches 600 if score @s NGEFF_DONE matches 1 run tag @s add RACT_TIMER_5
execute as @e[type=armor_stand,tag=RACT_USER,team=BLU,sort=nearest,limit=1] at @s as @e[team=RED,distance=..30,tag=!RACT_EFFECT,tag=!C_Wish_EFFECT] at @s if score @s NGEFF_DONE matches 1 run tag @s add RACT_EFFECT
## Debuff Effect
execute as @e[team=BLU,tag=RACT_EFFECT,tag=!C_Wish_EFFECT] at @s run damage @s 1.0 ho9tocraft:ngeffect/radiation
# Timer Condition
execute as @e[tag=RACT_EFFECT,tag=RACT_TIMER_0] at @s if score @s NGEFF_TIMER_0 matches 0 run tag @s remove RACT_EFFECT
execute as @e[tag=RACT_EFFECT,tag=RACT_TIMER_1] at @s if score @s NGEFF_TIMER_1 matches 0 run tag @s remove RACT_EFFECT
execute as @e[tag=RACT_EFFECT,tag=RACT_TIMER_2] at @s if score @s NGEFF_TIMER_2 matches 0 run tag @s remove RACT_EFFECT
execute as @e[tag=RACT_EFFECT,tag=RACT_TIMER_3] at @s if score @s NGEFF_TIMER_3 matches 0 run tag @s remove RACT_EFFECT
execute as @e[tag=RACT_EFFECT,tag=RACT_TIMER_4] at @s if score @s NGEFF_TIMER_4 matches 0 run tag @s remove RACT_EFFECT
execute as @e[tag=RACT_EFFECT,tag=RACT_TIMER_5] at @s if score @s NGEFF_TIMER_5 matches 0 run tag @s remove RACT_EFFECT
execute as @e[tag=!RACT_EFFECT,tag=RACT_TIMER_0] at @s if score @s NGEFF_TIMER_0 matches 0 run tag @s remove RACT_TIMER_0
execute as @e[tag=!RACT_EFFECT,tag=RACT_TIMER_1] at @s if score @s NGEFF_TIMER_1 matches 0 run tag @s remove RACT_TIMER_1
execute as @e[tag=!RACT_EFFECT,tag=RACT_TIMER_2] at @s if score @s NGEFF_TIMER_2 matches 0 run tag @s remove RACT_TIMER_2
execute as @e[tag=!RACT_EFFECT,tag=RACT_TIMER_3] at @s if score @s NGEFF_TIMER_3 matches 0 run tag @s remove RACT_TIMER_3
execute as @e[tag=!RACT_EFFECT,tag=RACT_TIMER_4] at @s if score @s NGEFF_TIMER_4 matches 0 run tag @s remove RACT_TIMER_4
execute as @e[tag=!RACT_EFFECT,tag=RACT_TIMER_5] at @s if score @s NGEFF_TIMER_5 matches 0 run tag @s remove RACT_TIMER_5
#endregion
