#define damage_type ho9tocraft:boss/lightning
#define damage_type ho9tocraft:boss/indirect_magic
#define tag RAID_BOSS

execute as @e[type=vindicator,team=RED] at @s store result score @s NOW_HP run data get entity @s Health
execute as @e[type=vindicator,team=RED] at @s if predicate ho9tocraft:item_selector/boss/divine_spark_shock unless entity @e[type=armor_stand,tag=DivSS_EFF_AS] run function ho9tocraft:raid_event/boss_skills/divine_spark_shock
