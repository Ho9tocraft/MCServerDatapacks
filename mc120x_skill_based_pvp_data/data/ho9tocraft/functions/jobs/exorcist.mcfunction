#EXC/巫覡
#Scoreboard: CURRENT_JOB ID=2
execute as @p[sort=nearest] at @s if score @s CURRENT_JOB matches 0.. run scoreboard players set @s CURRENT_JOB -1
#region 防具
#Data-pack Helper Plusのアップデートが反映されるまで、この方法で実装する。
execute as @p[scores={CURRENT_JOB=-1},sort=nearest] at @s run item replace entity @s armor.head with minecraft:netherite_helmet 1
execute as @p[scores={CURRENT_JOB=-1},sort=nearest] at @s run item replace entity @s armor.chest with minecraft:netherite_chestplate 1
execute as @p[scores={CURRENT_JOB=-1},sort=nearest] at @s run item replace entity @s armor.legs with minecraft:netherite_leggings 1
execute as @p[scores={CURRENT_JOB=-1},sort=nearest] at @s run item replace entity @s armor.feet with minecraft:netherite_boots 1
execute as @p[scores={CURRENT_JOB=-1},sort=nearest] at @s run item modify entity @s armor.head ho9tocraft:jobs/exorcist/exorcist_head
execute as @p[scores={CURRENT_JOB=-1},sort=nearest] at @s run item modify entity @s armor.chest ho9tocraft:jobs/exorcist/exorcist_chest
execute as @p[scores={CURRENT_JOB=-1},sort=nearest] at @s run item modify entity @s armor.legs ho9tocraft:jobs/exorcist/exorcist_legs
execute as @p[scores={CURRENT_JOB=-1},sort=nearest] at @s run item modify entity @s armor.feet ho9tocraft:jobs/exorcist/exorcist_feet
#endregion

#region 武器
execute as @p[scores={CURRENT_JOB=-1},sort=nearest] at @s run item replace entity @s hotbar.0 with minecraft:netherite_sword 1
execute as @p[scores={CURRENT_JOB=-1},sort=nearest] at @s run item replace entity @s weapon.offhand with minecraft:diamond_sword 1
execute as @p[scores={CURRENT_JOB=-1},sort=nearest] at @s run item modify entity @s hotbar.0 ho9tocraft:jobs/exorcist/exorcist_mainhand_sword
execute as @p[scores={CURRENT_JOB=-1},sort=nearest] at @s run item modify entity @s weapon.offhand ho9tocraft:jobs/exorcist/exorcist_offhand_sword
#endregion

#region スキル群
#endregion

#region ジョブID確定
execute as @p[scores={CURRENT_JOB=-1},sort=nearest] at @s run scoreboard players set @s CURRENT_JOB 2
#endregion
