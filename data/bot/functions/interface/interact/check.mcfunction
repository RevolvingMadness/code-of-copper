tag @s add bot.golem.target
execute on target as @s[predicate=bot:interface/looking_at_golem] run function bot:interface/interact/click
execute if data storage bot:temp golem at @s on vehicle run function bot:interface/set
data remove storage bot:temp golem
tag @s remove bot.golem.target