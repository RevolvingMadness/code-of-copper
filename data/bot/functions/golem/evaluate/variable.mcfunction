data modify storage bot:interpreter/evaluate Current set from storage bot:interpreter/evaluate stack[-1]

scoreboard players set .is_reserved bot.execution.variables 0
execute if data storage bot:interpreter/evaluate Current{value:["I","N","V","E","N","T","O","R","Y"]} run scoreboard players set .is_reserved bot.execution.variables 1
execute if data storage bot:interpreter/evaluate Current{value:["P","O","S"]} run scoreboard players set .is_reserved bot.execution.variables 1

execute unless score .is_reserved bot.execution.variables matches 1 run function bot:golem/evaluate/variable/get
execute if score .is_reserved bot.execution.variables matches 1 run function bot:golem/evaluate/variable/reserved

execute if data storage bot:interpreter/evaluate stack[-1].parameters[0] run data modify storage bot:interpreter/evaluate stack[-1].hasParameters set value true
execute if data storage bot:interpreter/evaluate stack[-1].hasParameters run data modify storage bot:interpreter/evaluate Parameterise set from storage bot:io Out
execute if data storage bot:interpreter/evaluate stack[-1].hasParameters run function bot:golem/evaluate/iterable/parameter_loop
