execute unless data storage bot:interpreter evaluate.current.metadata.status run function bot:interpreter/decode/evaluate/array/before
execute if data storage bot:interpreter evaluate.current.metadata{status:"open"} run function bot:interpreter/decode/evaluate/array/open
execute if data storage bot:interpreter evaluate.stack[-1].metadata{status:"parameters"} run function bot:interpreter/decode/evaluate/array/parameters/init
execute if data storage bot:interpreter evaluate.stack[-1].metadata{status:"closed"} run function bot:interpreter/decode/evaluate/array/close