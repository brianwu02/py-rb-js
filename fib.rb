# this doesn't seem pretty...there's gotta prettier way. 
# i feel like im stuck thinking in python

def r_fib(n)
  return n if n <= 1
  (r_fib(n - 1) + r_fib(n - 2))
end

# ternary op. if n is less than or equal to 1, return 1, otherwise
# return recurive calls.
def r_fib2(n)
  n <= 1 ? n : r_fib2(n - 1) + fib(n - 2)
end

# black magic. lambda function + ternary operator + block.
magic = ->(x){ x < 2 ? x : magic[x-1] + magic[x-2] }

def loop_fib(n)
  a, b = 0, 1
  0.upto(n - 1) do 
    a, b = b, a+b
  end
  return a
end

# apparently, this isn't a good design pattern either.
if __FILE__ == $0
  puts r_fib(10)
  puts loop_fib(10)
  puts magic[10]
  puts r_fib(10)
end
