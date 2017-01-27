def sum_to(num)
  num == 1 ? num : num + sum_to(num - 1)
end

def add_numbers(arr)
  arr.length == 1 ? arr[0] : arr[0] + add_numbers(arr[1..-1])
end

def gamma_fnc(num)
  return nil if num.zero?
  num == 1 ? 1 : (num - 1) * gamma_fnc(num - 1)
end
