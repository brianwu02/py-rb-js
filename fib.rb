# this doesn't seem pretty...there's gotta prettier way. 
# i feel like im stuck thinking in python

def r_fib(n)
  #if n == 1 || n == 2
  #  return 1
  return n if (0..1).include? n
  return r_fib(n - 1) + r_fib(n - 2)
end

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
end
