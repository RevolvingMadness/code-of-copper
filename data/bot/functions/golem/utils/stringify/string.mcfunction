data modify storage bot:interpreter/utils/stringify output append from storage bot:interpreter/utils/stringify stack[-1].value
data modify storage bot:interpreter/utils/stringify output[-1] prepend value "'"
data modify storage bot:interpreter/utils/stringify output[-1] append value "'"
