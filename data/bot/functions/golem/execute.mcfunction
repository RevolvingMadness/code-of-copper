execute if data storage bot:interpreter/execution Current{variant:"move"} run function bot:golem/execution/move
execute if data storage bot:interpreter/execution Current{variant:"place"} run function bot:golem/execution/place
execute if data storage bot:interpreter/execution Current{variant:"let"} run function bot:golem/execution/let
execute if data storage bot:interpreter/execution Current{variant:"print"} run function bot:golem/execution/print
execute if data storage bot:interpreter/execution Current{variant:"if"} run function bot:golem/execution/if
execute if data storage bot:interpreter/execution Current{variant:"while"} run function bot:golem/execution/while
execute if data storage bot:interpreter/execution Current{variant:"getBlock"} run function bot:golem/execution/get_block
execute if data storage bot:interpreter/execution Current{variant:"sleep"} run function bot:golem/execution/sleep
execute if data storage bot:interpreter/execution Current{variant:"match"} run function bot:golem/execution/match
execute if data storage bot:interpreter/execution Current{variant:"loop"} run function bot:golem/execution/loop
execute if data storage bot:interpreter/execution Current{variant:"break"} run function bot:golem/execution/break

data modify storage bot:interpreter/execution Current set value {}

function bot:golem/align
