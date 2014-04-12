
# this doesn't seem pretty...there's gotta prettier way.
def r_fib(n)
  if n == 1 || n == 2
    return 1
  end
  return r_fib(n - 1) + r_fib(n - 2)
end

# apparently, this isn't a good design pattern either.
if __FILE__ == $0
  puts r_fib(10)
end
