# using recursion
def recursive_fib(n):
    if (n == 1 or n == 2):
        return 1
    return recursive_fib(n - 1) + recursive_fib(n - 2)

# using loops
def loop_fib(n):
    a, b = 1, 1
    for i in range(n - 1):
        a, b = b, a+b
    return a

# using generators
a, b = 0, 1

def gen_fib():
    global a, b
    while True:
        a, b = b, a+b
        yield a

if __name__ == "__main__":
    print loop_fib(10)
    #f = gen_fib()
    #for i in range(10):
    #    print f.next()
