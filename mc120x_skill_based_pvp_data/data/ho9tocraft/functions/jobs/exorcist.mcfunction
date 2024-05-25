#EXC/巫覡
#Scoreboard: CURRENT_JOB ID=2
execute as @s at @s if score @s CURRENT_JOB matches 0.. run clear @s
execute as @s at @s if score @s CURRENT_JOB matches 0.. run scoreboard players set @s CURRENT_JOB -1
#region 防具
#Data-pack Helper Plusのアップデートが反映されるまで、この方法で実装する。
execute as @s[scores={CURRENT_JOB=-1}] at @s run item replace entity @s armor.head with minecraft:netherite_helmet 1
execute as @s[scores={CURRENT_JOB=-1}] at @s run item replace entity @s armor.chest with minecraft:netherite_chestplate 1
execute as @s[scores={CURRENT_JOB=-1}] at @s run item replace entity @s armor.legs with minecraft:netherite_leggings 1
execute as @s[scores={CURRENT_JOB=-1}] at @s run item replace entity @s armor.feet with minecraft:netherite_boots 1
execute as @s[scores={CURRENT_JOB=-1}] at @s run item modify entity @s armor.head ho9tocraft:jobs/exorcist/exorcist_head
execute as @s[scores={CURRENT_JOB=-1}] at @s run item modify entity @s armor.chest ho9tocraft:jobs/exorcist/exorcist_chest
execute as @s[scores={CURRENT_JOB=-1}] at @s run item modify entity @s armor.legs ho9tocraft:jobs/exorcist/exorcist_legs
execute as @s[scores={CURRENT_JOB=-1}] at @s run item modify entity @s armor.feet ho9tocraft:jobs/exorcist/exorcist_feet
#endregion

#region 武器
execute as @s[scores={CURRENT_JOB=-1}] at @s run item replace entity @s hotbar.0 with minecraft:netherite_sword 1
execute as @s[scores={CURRENT_JOB=-1}] at @s run item replace entity @s weapon.offhand with minecraft:diamond_sword 1
execute as @s[scores={CURRENT_JOB=-1}] at @s run item modify entity @s hotbar.0 ho9tocraft:jobs/exorcist/exorcist_mainhand_sword
execute as @s[scores={CURRENT_JOB=-1}] at @s run item modify entity @s weapon.offhand ho9tocraft:jobs/exorcist/exorcist_offhand_sword
#endregion

#region スキル群
#endregion

#region ジョブID確定
execute as @s[scores={CURRENT_JOB=-1}] at @s run scoreboard players set @s CURRENT_JOB 2
#endregion
