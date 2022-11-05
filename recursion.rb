def fibs(num)
  arr = [0, 1]
  (num - 2).times { arr << arr[-1] + arr[-2] }
  arr
end

def fibs_rec(num)
  num < 2 ? num : fibs_rec(num - 1) + fibs_rec(num - 2)
end

p fibs_rec(8)