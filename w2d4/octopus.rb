# O(n^2)
def octopus_sluggish(arr)
  arr.each do |el|
    bool = true
    arr.each_with_index do |el2|
      bool = false if el.length < el2.length
    end
    return el if bool
  end
end

# O(nlog(n))
def octopus_dominant(arr)
  merge_sort(arr) { |a, b| b.length <=> a.length }[0]
end

def merge_sort(arr, &prc)
  return arr if arr.length <= 1
  prc ||= proc { |a, b| a <=> b }
  mid = arr.length / 2
  left = merge_sort(arr[0...mid], &prc)
  right = merge_sort(arr[mid..-1], &prc)

  merge(left, right, &prc)
end

def merge(left, right)
  result = []
  until right.empty? && left.empty?
    if right.empty?
      result.push(*left)
      left = []
    elsif left.empty?
      result.push(*right)
      right = []
    else
      c = yield(left[0], right[0])
      result.push(c == -1 ? left.shift : right.shift)
    end
  end
  result
end

# O(n)
def octopus_clever(arr)
  biggest = arr[0]
  arr.each { |el| biggest = el if el.length > biggest.length }
  biggest
end

def slow_dance(dir, arr)
  arr.each_with_index { |el, idx| return idx if dir == el }
end

def fast_dance(dir, hsh)
  hsh[dir]
end
