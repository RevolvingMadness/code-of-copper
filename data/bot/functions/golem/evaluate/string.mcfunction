data modify storage bot:io Out set value {type: "undefined", value: undefined}
data modify storage bot:io Out.value set from storage bot:interpreter/evaluate stack[-1].value
data modify storage bot:io Out.type set from storage bot:interpreter/evaluate stack[-1].variant

execute if data storage bot:interpreter/evaluate stack[-1].parameters[0] run data modify storage bot:interpreter/evaluate stack[-1].hasParameters set value true
execute if data storage bot:interpreter/evaluate stack[-1].hasParameters run data modify storage bot:interpreter/evaluate Parameterise set from storage bot:io Out
execute if data storage bot:interpreter/evaluate stack[-1].hasParameters run function bot:golem/evaluate/iterable/parameter_loop
