def fibs(num)
  arr = [0, 1]
  (num - 2).times { arr << arr[-1] + arr[-2] }
  arr
end

def fibs_rec(num)
  num < 2 ? num : fibs_rec(num - 1) + fibs_rec(num - 2)
end

def merge_sort(arr)
  if arr.size == 1
    arr
  else
    left = merge_sort(arr[0..((arr.length / 2) - 1)])
    right = merge_sort(arr[(arr.length / 2)..])
    sorted = []

    until left.empty? || right.empty?
      if left.first < right.first
        sorted << left.shift
      else
        sorted << right.shift
      end
    end

    if left.empty?
      right.each { |el| sorted << el }
    elsif right.empty?
      left.each { |el| sorted << el }
    end

    sorted
  end
end

p merge_sort([0, 32_423, 123, 67, 727, 9, 1, 0, 0, 4534, 69])
