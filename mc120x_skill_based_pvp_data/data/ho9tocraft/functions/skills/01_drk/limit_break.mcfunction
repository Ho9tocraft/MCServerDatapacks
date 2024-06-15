#EvenTide(LIMIT BREAK)
#define tag DRK_LB_Exec
#define tag DRK_LB_TGT_BLU
#define tag DRK_LB_TGT_RED
#define tag DRK_LB_Rebound
#define tag DRK_LB_NGEFF_0
#define tag DRK_LB_NGEFF_1
#define tag DRK_LB_NGEFF_2
#define tag DRK_LB_NGEFF_3
#define tag DRK_LB_NGEFF_4
#define tag DRK_LB_NGEFF_5

execute as @s at @s run tellraw @a ["",{ "bold": false, "italic": false, "translate": "use.dark_knight_lb.name", "fallback": "%1$s used \"Eventide\".", "with": [ { "selector": "@s" }], "color": "#FFD700"}]
effect give @s hunger 10 255 true
effect give @s slowness 60 2 true
effect give @s unluck 240 3 true
tag @s add DRK_LB_Exec
execute as @s at @s run playsound finalfantasyxiv:limit_break_activated player @a[distance=..30] ~ ~ ~ 1.0 1.0 0.5
#region team=RED
execute as @s[team=RED] at @s as @e[team=BLU,distance=..30,sort=nearest,limit=1] at @s run tag @s add DRK_LB_TGT_BLU
execute as @s[team=RED] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_BLU] eyes positioned ^ ^ ^-27 as @e[team=BLU,distance=..3] at @s run damage @s 88 ho9tocraft:limit_break by @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_BLU] eyes positioned ^ ^ ^-24 as @e[team=BLU,distance=..3] at @s run damage @s 96 ho9tocraft:limit_break by @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_BLU] eyes positioned ^ ^ ^-21 as @e[team=BLU,distance=..3] at @s run damage @s 104 ho9tocraft:limit_break by @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_BLU] eyes positioned ^ ^ ^-18 as @e[team=BLU,distance=..3] at @s run damage @s 112 ho9tocraft:limit_break by @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_BLU] eyes positioned ^ ^ ^-15 as @e[team=BLU,distance=..3] at @s run damage @s 120 ho9tocraft:limit_break by @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_BLU] eyes positioned ^ ^ ^-12 as @e[team=BLU,distance=..3] at @s run damage @s 128 ho9tocraft:limit_break by @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_BLU] eyes positioned ^ ^ ^-9 as @e[team=BLU,distance=..3] at @s run damage @s 128 ho9tocraft:limit_break by @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_BLU] eyes positioned ^ ^ ^-6 as @e[team=BLU,distance=..3] at @s run damage @s 128 ho9tocraft:limit_break by @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_BLU] eyes positioned ^ ^ ^-3 as @e[team=BLU,distance=..3] at @s run damage @s 128 ho9tocraft:limit_break by @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_BLU] eyes positioned ^ ^ ^ as @e[team=BLU,distance=..3] at @s run damage @s 128 ho9tocraft:limit_break by @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_BLU] eyes positioned ^ ^ ^3 as @e[team=BLU,distance=..3] at @s run damage @s 128 ho9tocraft:limit_break by @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_BLU] eyes positioned ^ ^ ^6 as @e[team=BLU,distance=..3] at @s run damage @s 128 ho9tocraft:limit_break by @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_BLU] eyes positioned ^ ^ ^9 as @e[team=BLU,distance=..3] at @s run damage @s 128 ho9tocraft:limit_break by @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_BLU] eyes positioned ^ ^ ^12 as @e[team=BLU,distance=..3] at @s run damage @s 128 ho9tocraft:limit_break by @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_BLU] eyes positioned ^ ^ ^15 as @e[team=BLU,distance=..3] at @s run damage @s 120 ho9tocraft:limit_break by @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_BLU] eyes positioned ^ ^ ^18 as @e[team=BLU,distance=..3] at @s run damage @s 112 ho9tocraft:limit_break by @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_BLU] eyes positioned ^ ^ ^21 as @e[team=BLU,distance=..3] at @s run damage @s 104 ho9tocraft:limit_break by @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_BLU] eyes positioned ^ ^ ^24 as @e[team=BLU,distance=..3] at @s run damage @s 96 ho9tocraft:limit_break by @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_BLU] eyes positioned ^ ^ ^27 as @e[team=BLU,distance=..3] at @s run damage @s 88 ho9tocraft:limit_break by @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=RED,tag=DRK_LB_Exec,sort=nearest,limit=1]
#endregion
#region team=BLU
execute as @s[team=BLU] at @s as @e[team=RED,distance=..30,sort=nearest,limit=1] at @s run tag @s add DRK_LB_TGT_RED
execute as @s[team=BLU] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_RED] eyes positioned ^ ^ ^-27 as @e[team=RED,distance=..3] at @s run damage @s 88 ho9tocraft:limit_break by @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_RED] eyes positioned ^ ^ ^-24 as @e[team=RED,distance=..3] at @s run damage @s 96 ho9tocraft:limit_break by @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_RED] eyes positioned ^ ^ ^-21 as @e[team=RED,distance=..3] at @s run damage @s 104 ho9tocraft:limit_break by @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_RED] eyes positioned ^ ^ ^-18 as @e[team=RED,distance=..3] at @s run damage @s 112 ho9tocraft:limit_break by @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_RED] eyes positioned ^ ^ ^-15 as @e[team=RED,distance=..3] at @s run damage @s 120 ho9tocraft:limit_break by @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_RED] eyes positioned ^ ^ ^-12 as @e[team=RED,distance=..3] at @s run damage @s 128 ho9tocraft:limit_break by @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_RED] eyes positioned ^ ^ ^-9 as @e[team=RED,distance=..3] at @s run damage @s 128 ho9tocraft:limit_break by @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_RED] eyes positioned ^ ^ ^-6 as @e[team=RED,distance=..3] at @s run damage @s 128 ho9tocraft:limit_break by @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_RED] eyes positioned ^ ^ ^-3 as @e[team=RED,distance=..3] at @s run damage @s 128 ho9tocraft:limit_break by @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_RED] eyes positioned ^ ^ ^ as @e[team=RED,distance=..3] at @s run damage @s 128 ho9tocraft:limit_break by @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_RED] eyes positioned ^ ^ ^3 as @e[team=RED,distance=..3] at @s run damage @s 128 ho9tocraft:limit_break by @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_RED] eyes positioned ^ ^ ^6 as @e[team=RED,distance=..3] at @s run damage @s 128 ho9tocraft:limit_break by @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_RED] eyes positioned ^ ^ ^9 as @e[team=RED,distance=..3] at @s run damage @s 128 ho9tocraft:limit_break by @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_RED] eyes positioned ^ ^ ^12 as @e[team=RED,distance=..3] at @s run damage @s 128 ho9tocraft:limit_break by @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_RED] eyes positioned ^ ^ ^15 as @e[team=RED,distance=..3] at @s run damage @s 120 ho9tocraft:limit_break by @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_RED] eyes positioned ^ ^ ^18 as @e[team=RED,distance=..3] at @s run damage @s 112 ho9tocraft:limit_break by @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_RED] eyes positioned ^ ^ ^21 as @e[team=RED,distance=..3] at @s run damage @s 104 ho9tocraft:limit_break by @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_RED] eyes positioned ^ ^ ^24 as @e[team=RED,distance=..3] at @s run damage @s 96 ho9tocraft:limit_break by @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=DRK_LB_TGT_RED] eyes positioned ^ ^ ^27 as @e[team=RED,distance=..3] at @s run damage @s 88 ho9tocraft:limit_break by @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=DRK_LB_Exec,sort=nearest,limit=1]
#endregion
#region PostProcess
execute as @s[tag=DRK_LB_Exec] at @s run tag @s remove DRK_LB_Exec
execute as @e[tag=DRK_LB_TGT_BLU] at @s run tag @s remove DRK_LB_TGT_BLU
execute as @e[tag=DRK_LB_TGT_RED] at @s run tag @s remove DRK_LB_TGT_RED
execute as @s at @s run scoreboard players set @s LB_CHARGE 0
execute as @s at @s run scoreboard players set @s LB_RECAST_T 50
# IfScore Sector
execute as @s at @s if score @s NGEFF_TIMER_0 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_0 1200
execute as @s at @s if score @s NGEFF_TIMER_1 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_1 1200
execute as @s at @s if score @s NGEFF_TIMER_2 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_2 1200
execute as @s at @s if score @s NGEFF_TIMER_3 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_3 1200
execute as @s at @s if score @s NGEFF_TIMER_4 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_4 1200
execute as @s at @s if score @s NGEFF_TIMER_5 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_5 1200
execute as @s at @s if score @s NGEFF_TIMER_0 matches 1200 if score @s NGEFF_DONE matches 1 run tag @s add DRK_LB_NGEFF_0
execute as @s at @s if score @s NGEFF_TIMER_1 matches 1200 if score @s NGEFF_DONE matches 1 run tag @s add DRK_LB_NGEFF_1
execute as @s at @s if score @s NGEFF_TIMER_2 matches 1200 if score @s NGEFF_DONE matches 1 run tag @s add DRK_LB_NGEFF_2
execute as @s at @s if score @s NGEFF_TIMER_3 matches 1200 if score @s NGEFF_DONE matches 1 run tag @s add DRK_LB_NGEFF_3
execute as @s at @s if score @s NGEFF_TIMER_4 matches 1200 if score @s NGEFF_DONE matches 1 run tag @s add DRK_LB_NGEFF_4
execute as @s at @s if score @s NGEFF_TIMER_5 matches 1200 if score @s NGEFF_DONE matches 1 run tag @s add DRK_LB_NGEFF_5
# Success Effect
execute as @s at @s if score @s NGEFF_DONE matches 1 run tag @s add DRK_LB_Rebound
#endregion
