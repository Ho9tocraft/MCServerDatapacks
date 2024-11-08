#SGS/深緋の賢者
#Scoreboard: CURRENT_JOB ID=6
execute as @s at @s if score @s CURRENT_JOB matches 0.. run clear @s
execute as @s at @s if score @s CURRENT_JOB matches 0.. run scoreboard players set @s CURRENT_JOB -1
## 防具
# アビスリンカー装備
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item replace entity @s armor.head with golden_helmet 1
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item replace entity @s armor.chest with golden_chestplate 1
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item replace entity @s armor.legs with golden_leggings 1
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item replace entity @s armor.feet with golden_boots 1
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item modify entity @s armor.head ho9tocraft:jobs/sage_moepic/sage_moepic_head
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item modify entity @s armor.chest ho9tocraft:jobs/sage_moepic/sage_moepic_chest
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item modify entity @s armor.legs ho9tocraft:jobs/sage_moepic/sage_moepic_legs
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item modify entity @s armor.feet ho9tocraft:jobs/sage_moepic/sage_moepic_feet

## 武器
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item replace entity @s hotbar.0 with golden_hoe 1
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item modify entity @s hotbar.0 ho9tocraft:jobs/sage_moepic/sage_moepic_mainhand

## スキル群
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item replace entity @s hotbar.1 with blade_pottery_sherd 1
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item replace entity @s hotbar.2 with plenty_pottery_sherd 1
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item replace entity @s hotbar.3 with glowstone_dust 1
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item replace entity @s hotbar.4 with nether_star 1
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item modify entity @s hotbar.1 ho9tocraft:jobs/sage_moepic/skills/ws
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item modify entity @s hotbar.2 ho9tocraft:jobs/sage_moepic/skills/mg
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item modify entity @s hotbar.3 ho9tocraft:jobs/sage_moepic/skills/ab
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item modify entity @s hotbar.4 ho9tocraft:jobs/sage_moepic/skills/lb

## ジョブID確定
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run scoreboard players set @s WS_RECAST_T 0
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run scoreboard players set @s MG_RECAST_T 0
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run scoreboard players set @s AB_RECAST_T 0
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run scoreboard players set @s LB_RECAST_T 0
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s if score ^VPHandler BATTLE_COND matches -1 run scoreboard players set @s LB_CHARGE 100
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run effect give @s instant_health 200 23 true
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run scoreboard players set @s CURRENT_JOB 6

