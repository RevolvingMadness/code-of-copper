#vector3D
data modify storage bot:io In set from storage bot:program Current.args[1]
function bot:turtle/evaluate
data modify storage bot:io Out set from storage bot:io Out[0]
execute store result score .x bot.execution.pos run data get entity @s Pos[0]
execute store result score .y bot.execution.pos run data get entity @s Pos[1]
execute store result score .z bot.execution.pos run data get entity @s Pos[2]
execute store result score .dx bot.execution.pos run data get storage bot:io Out[0][0]
execute store result score .dy bot.execution.pos run data get storage bot:io Out[1][0]
execute store result score .dz bot.execution.pos run data get storage bot:io Out[2][0]

scoreboard players operation .old_x bot.execution.pos = .x bot.execution.pos
scoreboard players operation .old_y bot.execution.pos = .y bot.execution.pos
scoreboard players operation .old_z bot.execution.pos = .z bot.execution.pos

execute store result entity @s Pos[0] double 1 run scoreboard players operation .x bot.execution.pos += .dx bot.execution.pos
execute store result entity @s Pos[1] double 1 run scoreboard players operation .y bot.execution.pos += .dy bot.execution.pos
execute store result entity @s Pos[2] double 1 run scoreboard players operation .z bot.execution.pos += .dz bot.execution.pos

#slot
data modify storage bot:io In set from storage bot:program Current.args[0]
function bot:turtle/evaluate
data modify storage bot:io In set from storage bot:io Out[0]
function bot:turtle/execution/place/get_item_at_position_in_inventory

data modify storage bot:io In set from storage bot:io Out
execute at @s run function bot:turtle/execution/place/place_block_from_item

execute store result entity @s Pos[0] double 1 run scoreboard players get .old_x bot.execution.pos
execute store result entity @s Pos[1] double 1 run scoreboard players get .old_y bot.execution.pos
execute store result entity @s Pos[2] double 1 run scoreboard players get .old_z bot.execution.pos
