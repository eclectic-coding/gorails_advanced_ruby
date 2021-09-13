# Splat all args into array
def a(*args)
    p args
end

# Strong params is a type of splatthat returns an array

a
a(1)
a("test", "test")
a("test", hash: :hello)

# double splat returns hash
def b(**options)
    p options
end

b
b(hash: :hello)
# b(1)
# b("test", "test")