#DRK/暗黒騎士
#Scoreboard: CURRENT_JOB ID=1
execute as @p[sort=nearest] at @s if score @s CURRENT_JOB matches 0.. run scoreboard players set @s CURRENT_JOB -1
#region 防具
#Data-pack Helper Plusのアップデートが反映されるまで、この方法で実装する。
#endregion

#region 武器
#endregion

#region スキル群
#endregion

#region ジョブID確定
execute as @p[scores={CURRENT_JOB=-1},sort=nearest] at @s run scoreboard players set @s CURRENT_JOB 1
#endregion
