data modify storage bot:io Out set from storage bot:variables expressionStack[-1].expressionValue

execute if score .global bot.dev_mode matches 1 run tellraw @a [{"text": "Evaluate: adding object ", "color": "green"},{"nbt":"expressionStack[-1].expressionValue", "storage": "bot:variables", "color": "yellow"},{"text": " to object ", "color": "green"},{"nbt":"expressionStack[-1].expressionExpression", "storage": "bot:variables", "color": "yellow"}]

execute if data storage bot:variables expressionStack[-1].expressionExpression.value[0] run function bot:golem/evaluate/expression/operations/add/object/loop

execute if score .global bot.dev_mode matches 1 run tellraw @a [{"text": "Evaluate: got ", "color": "green"},{"nbt": "Out", "storage": "bot:io", "color": "yellow"}]