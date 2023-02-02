data modify storage bot:parser current set from storage bot:parser/iterate target[0]
data remove storage bot:parser/iterate target[0]

tellraw @s {"storage":"bot:parser","nbt":"stack[-1].type"}
tellraw @s {"storage":"bot:parser","nbt":"current"}

data remove storage bot:parser consumed

function bot:parser/newline
function bot:parser/comment
execute unless data storage bot:parser {comment:true} run function bot:parser/parse

execute if data storage bot:parser/iterate target[] unless data storage bot:parser raise run function bot:parser/iterate