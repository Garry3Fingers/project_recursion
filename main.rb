# frozen_string_literal: true

def fibs(num)
  i = 1
  arr = [0]
  arr << 1 if num.positive?

  while i < num
    arr << 1 if i == 1
    arr << arr[-2] + arr[-1] if arr.length >= 3 && arr.length < num + 1
    i += 1
  end

  arr
end

p fibs(0)
p fibs(1)
p fibs(2)
p fibs(8)
