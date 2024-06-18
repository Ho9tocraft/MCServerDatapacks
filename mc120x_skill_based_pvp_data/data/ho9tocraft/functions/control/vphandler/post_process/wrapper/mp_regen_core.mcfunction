execute as @s[tag=BRose_EFFECT] at @s if score @s NOW_SURR_ENEMY matches 1.. if score @s NOW_MP matches ..9999 run scoreboard players add @s NOW_MP 250
execute as @s[tag=!BRose_EFFECT] at @s if score @s NOW_SURR_ENEMY matches 1.. if score @s NOW_MP matches ..9999 run scoreboard players add @s NOW_MP 500
execute as @s[tag=BRose_EFFECT] at @s if score @s NOW_SURR_ENEMY matches 0 if score @s NOW_MP matches ..9999 run scoreboard players add @s NOW_MP 500
execute as @s[tag=!BRose_EFFECT] at @s if score @s NOW_SURR_ENEMY matches 0 if score @s NOW_MP matches ..9999 run scoreboard players add @s NOW_MP 1000
execute as @s[tag=BRose_EFFECT] at @s if predicate ho9tocraft:score_condition/whether_job_is_caster if score @s NOW_MP matches ..9999 run scoreboard players add @s NOW_MP 200
execute as @s[tag=!BRose_EFFECT] at @s if predicate ho9tocraft:score_condition/whether_job_is_caster if score @s NOW_MP matches ..9999 run scoreboard players add @s NOW_MP 250
