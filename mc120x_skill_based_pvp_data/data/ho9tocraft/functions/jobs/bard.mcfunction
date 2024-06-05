#BRD/吟遊詩人
#Scoreboard: CURRENT_JOB ID=3
execute as @s at @s if score @s CURRENT_JOB matches 0.. run clear @s
execute as @s at @s if score @s CURRENT_JOB matches 0.. run scoreboard players set @s CURRENT_JOB -1
#region 防具
#Data-pack Helper Plusのアップデートが反映されるまで、この方法で実装する。
#endregion
#region 武器
#endregion
#region スキル群
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item replace entity @s hotbar.3 with glowstone_dust 1
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item replace entity @s hotbar.4 with nether_star 1
#endregion
#region ジョブID確定
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run scoreboard players set @s CURRENT_JOB 3
#endregion
