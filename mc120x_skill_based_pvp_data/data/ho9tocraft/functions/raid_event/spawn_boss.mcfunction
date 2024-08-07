execute in ho9tocraft:pvp_battlefield if score ^VPHandler BATTLE_STAGE matches -32768 run summon vindicator -24 72 200 {CustomNameVisible:1b,Team:"RED",Tags:["RAID_BOSS"],Health:15000f,CustomName:'{"bold":true,"color":"red","italic":false,"text":"Exellia, the Lord of Furthest"}',HandItems:[{id:"minecraft:diamond_sword",count:1,components:{"minecraft:unbreakable":{},"minecraft:hide_tooltip":{},"minecraft:enchantments":{levels:{"minecraft:sharpness":10,"minecraft:sweeping_edge":3}},"minecraft:attribute_modifiers":[{type:"generic.attack_damage",name:"generic.attack_damage",amount:10,operation:"add_value",uuid:[I;636923452,209014456,-1076322938,-1003235708],slot:"mainhand"}]}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:netherite_boots",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:feather_falling":10,"minecraft:protection":5}},"minecraft:trim":{"material":"minecraft:raised_soul","pattern":"minecraft:raised_soul"}}},{id:"minecraft:netherite_leggings",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":5}},"minecraft:trim":{"material":"minecraft:raised_soul","pattern":"minecraft:raised_soul"}}},{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":5}},"minecraft:trim":{"material":"minecraft:raised_soul","pattern":"minecraft:raised_soul"}}},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;1268661460,-536590633,-1283534351,1716818536],properties:[{name:"textures",value:"ewogICJ0aW1lc3RhbXAiIDogMTcxOTM3NzIyODY3MSwKICAicHJvZmlsZUlkIiA6ICI0YjllM2NkNGUwMDQ0NmQ3YjM3ZWQxZjE2NjU0OTI2OCIsCiAgInByb2ZpbGVOYW1lIiA6ICJIbzl0b2NyYWZ0IiwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2IzNTVlMjE4Y2ViMDZmNmJjNTdlZmY2Y2E2MmRhM2ZmOTFkMDRhNTk0MWVkMmVkOGYzYTZjMTQwMjRjMGU3N2EiCiAgICB9LAogICAgIkNBUEUiIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzIzNDBjMGUwM2RkMjRhMTFiMTVhOGIzM2MyYTdlOWUzMmFiYjIwNTFiMjQ4MWQwYmE3ZGVmZDYzNWNhN2E5MzMiCiAgICB9CiAgfQp9"}]}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:"generic.attack_damage",Base:35},{Name:"generic.attack_knockback",Base:5},{Name:"generic.attack_speed",Base:4},{Name:"generic.fall_damage_multiplier",Base:0},{Name:"generic.knockback_resistance",Base:1},{Name:"generic.scale",Base:4},{Name:"generic.max_health",Base:15000}]}
execute as @e[type=vindicator,team=RED] at @s run effect give @s fire_resistance infinite 255 true
execute as @e[type=vindicator,team=RED] at @s run scoreboard players set @s DYNAMIS 6