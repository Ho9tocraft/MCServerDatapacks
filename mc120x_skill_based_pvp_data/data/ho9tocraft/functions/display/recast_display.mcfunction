#'MP' Status / 'WS | Magic | Ability' Recast / 'LIMIT BREAK' Charge Status
execute as @a at @s run title @s actionbar [{"text":"MP:","color":"dark_purple"},{"text":" "},{"score":{"name":"@s","objective":"NOW_MP"},"color":"light_purple"},{"text":"/","color":"white"},{"text":"WS:","color":"gold"},{"text":" "},{"score":{"name":"@s","objective":"WS_RECAST_V"},"color":"yellow"},{"text":"s","color":"yellow"},{"text":"/","color":"white"},{"text":"Mg:","color":"gold"},{"text":" "},{"score":{"name":"@s","objective":"MG_RECAST_V"},"color":"yellow"},{"text":"s","color":"yellow"},{"text":"/","color":"white"},{"text":"Ab:","color":"gold"},{"text":" "},{"score":{"name":"@s","objective":"AB_RECAST_V"},"color":"yellow"},{"text":"s","color":"yellow"},{"text":"/","color":"white"},{"text":"LB:","color":"gold"},{"text":" "},{"score":{"name":"@s","objective":"LB_CHARGE"},"color":"yellow"},{"text": "/","color": "white"},{"text": "Cast:","color": "#9F166A"},{"text": " "},{"score":{"name": "@s","objective": "CAST_TIMER"},"color": "#EA618E"}]
