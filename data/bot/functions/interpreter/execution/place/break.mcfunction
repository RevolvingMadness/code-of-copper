execute in moxlib:state positioned 3 57 -4 run setblock ~ ~ ~ chest
execute in moxlib:state positioned 3 57 -4 run data modify block ~ ~ ~ Items set from entity @s Items
data modify storage bot:interpreter/execution temp set from entity @s Items
clone ~ ~ ~ ~ ~ ~ to moxlib:state 3 56 -4
execute in moxlib:state positioned 3 57 -4 as 0f80604b-e7f2-4a90-80c3-991c3eb3f73b run loot insert ~ ~ ~ mine ~ ~-1 ~ mainhand
execute in moxlib:state positioned 3 57 -4 run data modify entity @s Items set from block ~ ~ ~ Items
execute in moxlib:state positioned 3 56 -4 run setblock ~ ~ ~ air
execute store result score .success bot.execution.variables run data modify storage bot:interpreter/execution temp set from entity @s Items
execute unless score .success bot.execution.variables matches 1.. as 0f80604b-e7f2-4a90-80c3-991c3eb3f73b run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute store result score .damage bot.execution.variables run data get entity 0f80604b-e7f2-4a90-80c3-991c3eb3f73b HandItems[0].tag.Damage
execute store result entity 0f80604b-e7f2-4a90-80c3-991c3eb3f73b HandItems[0].tag.Damage int 1 run scoreboard players add .damage bot.execution.variables 1
execute as 0f80604b-e7f2-4a90-80c3-991c3eb3f73b if predicate bot:is_broken run item replace entity @s weapon.mainhand with air
execute unless block ~ ~ ~ #bot:container run setblock ~ ~ ~ air
execute if block ~ ~ ~ #bot:container run function bot:interpreter/execution/place/break_container

data modify storage bot:dev_mode logs append value '[{"text": "Place: breaking block, success!", "color": "green"}]'
