#STAGE_0 SAFE AREA

#region team=RED Safe Area
execute in ho9tocraft:pvp_battlefield positioned -52 63 64 as @a[x=-52,y=63,z=64,dx=-28,dy=21,dz=-24,team=BLU] at @s run tp @s 30 82 -46
execute in ho9tocraft:pvp_battlefield positioned -52 63 64 as @a[x=-52,y=63,z=64,dx=-28,dy=21,dz=-24,team=RED] at @s run effect give @s saturation 200 3 true
execute in ho9tocraft:pvp_battlefield positioned -52 63 64 as @a[x=-52,y=63,z=64,dx=-28,dy=21,dz=-24,team=RED] at @s run effect give @s resistance 5 4 true
#endregion
#region team=BLU Safe Area
execute in ho9tocraft:pvp_battlefield positioned -1 73 -48 as @a[x=-1,y=73,z=-48,dx=33,dy=35,dz=26,team=RED] at @s run tp @s -78 72 62
execute in ho9tocraft:pvp_battlefield positioned -1 73 -48 as @a[x=-1,y=73,z=-48,dx=33,dy=35,dz=26,team=BLU] at @s run effect give @s saturation 200 3 true
execute in ho9tocraft:pvp_battlefield positioned -1 73 -48 as @a[x=-1,y=73,z=-48,dx=33,dy=35,dz=26,team=BLU] at @s run effect give @s resistance 5 4 true
#endregion
