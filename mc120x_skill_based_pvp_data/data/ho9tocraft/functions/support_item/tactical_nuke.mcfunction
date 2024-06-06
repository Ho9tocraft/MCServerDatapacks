#Tactical Nuke(戦術核砲弾)
#define tag RACT_USER
#define tag RACT_EFFECT
#define tag RACT_TIMER_0
#define tag RACT_TIMER_1
#define tag RACT_TIMER_2
#define tag RACT_TIMER_3
#define tag RACT_TIMER_4
#define tag RACT_TIMER_5

#region team=RED
execute as @s[team=RED] at @s as @e[sort=nearest,team=BLU,limit=1] at @s run summon armor_stand ~ ~ ~ {Team: "RED",Tags:["RACT_USER"],DisabledSlots:4144959,Invisible:true,Silent:true}
# IfScore Sector
#優先度: TIMER_0 > TIMER_1 > TIMER_2 > TIMER_3 > TIMER_4 > TIMER_5
execute as @e[type=armor_stand,tag=RACT_USER,team=RED,sort=nearest,limit=1] at @s as @e[team=BLU,distance=..30] at @s if score @s NGEFF_TIMER_0 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_0 600
execute as @e[type=armor_stand,tag=RACT_USER,team=RED,sort=nearest,limit=1] at @s as @e[team=BLU,distance=..30] at @s if score @s NGEFF_TIMER_1 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_1 600
execute as @e[type=armor_stand,tag=RACT_USER,team=RED,sort=nearest,limit=1] at @s as @e[team=BLU,distance=..30] at @s if score @s NGEFF_TIMER_2 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_2 600
execute as @e[type=armor_stand,tag=RACT_USER,team=RED,sort=nearest,limit=1] at @s as @e[team=BLU,distance=..30] at @s if score @s NGEFF_TIMER_3 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_3 600
execute as @e[type=armor_stand,tag=RACT_USER,team=RED,sort=nearest,limit=1] at @s as @e[team=BLU,distance=..30] at @s if score @s NGEFF_TIMER_4 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_4 600
execute as @e[type=armor_stand,tag=RACT_USER,team=RED,sort=nearest,limit=1] at @s as @e[team=BLU,distance=..30] at @s if score @s NGEFF_TIMER_5 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_5 600
# Success Effect
execute as @e[type=armor_stand,tag=RACT_USER,team=RED,sort=nearest,limit=1] at @s as @e[team=BLU,distance=..30] at @s if score @s NGEFF_DONE matches 1 run tag @s add RACT_EFFECT
#endregion
#region team=BLU
execute as @s[team=BLU] at @s as @e[sort=nearest,team=RED,limit=1] at @s run summon armor_stand ~ ~ ~ {Team: "BLU",Tags:["RACT_USER"],DisabledSlots:4144959,Invisible:true,Silent:true}
# IfScore Sector
#優先度: TIMER_0 > TIMER_1 > TIMER_2 > TIMER_3 > TIMER_4 > TIMER_5
execute as @e[type=armor_stand,tag=RACT_USER,team=BLU,sort=nearest,limit=1] at @s as @e[team=RED,distance=..30] at @s if score @s NGEFF_TIMER_0 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_0 600
execute as @e[type=armor_stand,tag=RACT_USER,team=BLU,sort=nearest,limit=1] at @s as @e[team=RED,distance=..30] at @s if score @s NGEFF_TIMER_1 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_1 600
execute as @e[type=armor_stand,tag=RACT_USER,team=BLU,sort=nearest,limit=1] at @s as @e[team=RED,distance=..30] at @s if score @s NGEFF_TIMER_2 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_2 600
execute as @e[type=armor_stand,tag=RACT_USER,team=BLU,sort=nearest,limit=1] at @s as @e[team=RED,distance=..30] at @s if score @s NGEFF_TIMER_3 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_3 600
execute as @e[type=armor_stand,tag=RACT_USER,team=BLU,sort=nearest,limit=1] at @s as @e[team=RED,distance=..30] at @s if score @s NGEFF_TIMER_4 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_4 600
execute as @e[type=armor_stand,tag=RACT_USER,team=BLU,sort=nearest,limit=1] at @s as @e[team=RED,distance=..30] at @s if score @s NGEFF_TIMER_5 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_5 600
execute as @e[type=armor_stand,tag=RACT_USER,team=BLU,sort=nearest,limit=1] at @s as @e[team=RED,distance=..30] at @s if score @s NGEFF_DONE matches 1 run tag @s add RACT_EFFECT
#endregion
#region PostProcess
execute as @e[type=armor_stand,tag=RACT_USER,sort=nearest,limit=1] at @s run scoreboard players set @s SPEFF_TIMER_0 400
execute as @s at @s run scoreboard players set @s AB_RECAST_T 200
execute as @s at @s run clear @s tnt 1
#endregion
