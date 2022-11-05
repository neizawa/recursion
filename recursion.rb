def fib(num)
  arr = [0, 1]
  (num - 2).times { arr << arr[-1] + arr[-2] }
  arr
end

p fib(8)