# This gets removed immediately
data modify entity @s data.instructions[-1].value prepend value {}

data modify storage bot:interpreter/evaluate stack set from entity @s data.function_stack[-1]
data remove entity @s data.function_stack[-1]

data modify entity @s data.return_value set value {type:"undefined",value:undefined}
data modify entity @s data.return_value set from storage bot:interpreter/execution current.decoded_args[0]

execute if data storage bot:interpreter/evaluate stack[0] run function bot:interpreter/_evaluate
