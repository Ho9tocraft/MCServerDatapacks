#RDM/赤魔道士
#Scoreboard: CURRENT_JOB ID=5
execute as @s at @s if score @s CURRENT_JOB matches 0.. run clear @s
execute as @s at @s if score @s CURRENT_JOB matches 0.. run scoreboard players set @s CURRENT_JOB -1
#region 防具
#Data-pack Helper Plusのアップデートが反映されるまで、この方法で実装する。
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item replace entity @s armor.head with golden_helmet 1
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item replace entity @s armor.chest with golden_chestplate 1
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item replace entity @s armor.legs with golden_leggings 1
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item replace entity @s armor.feet with golden_boots 1
#endregion
#region 武器
#endregion
#region スキル群
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item replace entity @s hotbar.1 with blade_pottery_sherd 1
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item replace entity @s hotbar.2 with plenty_pottery_sherd 1
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item replace entity @s hotbar.3 with glowstone_dust 1
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item replace entity @s hotbar.4 with nether_star 1
#endregion
#region ジョブID確定
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run scoreboard players set @s WS_RECAST_T 0
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run scoreboard players set @s MG_RECAST_T 0
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run scoreboard players set @s AB_RECAST_T 0
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run scoreboard players set @s LB_RECAST_T 0
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s if score ^VPHandler BATTLE_COND matches -1 run scoreboard players set @s LB_CHARGE 100
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run effect give @s instant_health 1 23 true
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run scoreboard players set @s CURRENT_JOB 5
#endregion
