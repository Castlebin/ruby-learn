# -*- coding: UTF-8 -*-

# 返回第 n 个 Fibonacci 数，假设 n 从 1 开始，第 1 个是 1，第 2 个是 1 ，依次类推
def fib(n)
    if (n <= 0) 
        raise "入参 n 必须 大于等于 1"
    end
    if n == 1 || n == 2
        return 1
    end

    return fib(n - 1) + fib(n - 2)
end

puts fib(10)
# puts fib(0)


# 返回 n 个 Fibonacci 数，以数组返回
def fib_list(n)
    if (n <= 0) 
        raise "入参 n 必须 大于等于 1"
    end
    fibs = []
    a, b = 0, 1
    n.times {
        fibs.push(b)
        a, b = b, a + b
    }
    return fibs
end

# 调用试一下
print fib_list(10)

