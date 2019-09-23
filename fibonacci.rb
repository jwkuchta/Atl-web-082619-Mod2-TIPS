require 'pry-byebug'
# Pry is included in case you'd like to run this file and test it,
# but you may remove it if you like.

def fibonacci_nonrecursive(n)
  return 1 if n == 1 || n == 2 
  first = 1
  second = 1
  until n < 3
    fib = first + second
    first = second
    second = fib
    n -= 1
  end
  fib
end

def fibonacci(n)
  if n == 1 || n == 2
    return 1
  elsif n > 2
    return (fibonacci(n - 1) + fibonacci(n - 2))
  end
end

# Pry.start

for n in (1..10)
  puts fibonacci(n)
end

for n in (1..10)
  puts fibonacci_nonrecursive(n)
end

# puts fibonacci(1)
# puts fibonacci(2)
# puts fibonacci(3)
# puts fibonacci(4)
# puts fibonacci(5)
# puts fibonacci(6)
# puts fibonacci(7)
# puts fibonacci(8)
# puts fibonacci(9)
# puts fibonacci(10)

# puts fibonacci_nonrecursive(10)
# puts fibonacci_nonrecursive(2)
# puts fibonacci_nonrecursive(3)
# puts fibonacci_nonrecursive(4)
# puts fibonacci_nonrecursive(5)
# puts ffibonacci_nonrecursive(6)
# puts fibonacci(7)
# puts fibonacci(8)
# puts fibonacci(9)
# puts fibonacci(10)

