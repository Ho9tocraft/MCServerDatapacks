#DRK/暗黒騎士
#Scoreboard: CURRENT_JOB ID=1
execute as @s at @s if score @s CURRENT_JOB matches 0.. run clear @s
execute as @s at @s if score @s CURRENT_JOB matches 0.. run scoreboard players set @s CURRENT_JOB -1
#region 防具
#Data-pack Helper Plusのアップデートが反映されるまで、この方法で実装する。
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item replace entity @s armor.head with diamond_helmet 1
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item replace entity @s armor.chest with diamond_chestplate 1
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item replace entity @s armor.legs with diamond_leggings 1
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item replace entity @s armor.feet with diamond_boots 1
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item modify entity @s armor.head ho9tocraft:jobs/dark_knight/dark_knight_head
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item modify entity @s armor.chest ho9tocraft:jobs/dark_knight/dark_knight_chest
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item modify entity @s armor.legs ho9tocraft:jobs/dark_knight/dark_knight_legs
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item modify entity @s armor.feet ho9tocraft:jobs/dark_knight/dark_knight_feet
#endregion

#region 武器
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item replace entity @s hotbar.0 with golden_sword 1
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run item modify entity @s hotbar.0 ho9tocraft:jobs/dark_knight/dark_knight_mainhand_sword
#endregion

#region スキル群
#endregion

#region ジョブID確定
execute as @s[predicate=ho9tocraft:passive_selector/job_not_selected] at @s run scoreboard players set @s CURRENT_JOB 1
#endregion
