execute unless data storage bot:parser/literal current.status run function bot:parser/literal/string/before
execute if data storage bot:parser/literal {current:{status:"open"}} run function bot:parser/literal/string/open
execute if data storage bot:parser/literal {current:{status:"closed"}} run function bot:parser/literal/close/init