# Examples

## Hello World
```ruby
print("Hello, World!")
```

## Fizz Buzz
```ruby
let i = 0
loop 100
  i += 1
  let fizzbuzz = ""
  if i % 3 == 0
    fizzbuzz += "fizz"
  end
  if i % 5 == 0
    fizzbuzz += "buzz"
  end
  if fizzbuzz
    print(fizzbuzz)
    next
  end
  print(i)
end
```

## Fibonacci Sequence
```ruby
let a = 0
let b = 1
print(a)
print(b)
loop 20
  let c = a + b
  a = b
  b = c
  print(c)
end
```

## Pathfinding algorithm
```rb
let last = [0,0]

func check(res, x, z)
  if getblock(x,-1,z) == res && last != [x*-1,z*-1]
    last = [x,z]
    move(x,0,z)
    return true
  end
  return false
end

func path(res)
  if check(res, 1, 0)
    return true
  end
  if check(res, -1, 0)
    return true
  end
  if check(res, 0, 1)
    return true
  end
  if check(res, 0, -1)
    return true
  end
end

while path(:stone)
end
```
