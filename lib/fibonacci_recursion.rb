# frozen_string_literal: true

def fibs(num)
  return [0] if num.zero?

  arr = [0, 1]
  return arr if num == 1

  i = 1
  while i < num
    arr << arr[-2] + arr[-1]
    i += 1
  end

  arr
end

p fibs(0)
p fibs(1)
p fibs(2)
p fibs(8)

def fibs_rec(num, accum = [0, 1])
  return [0] if num.zero?
  return accum if num == 1

  fibs_rec(num - 1, accum.push(accum[-2] + accum[-1]))
end

p fibs_rec(0)
p fibs_rec(1)
p fibs_rec(2)
p fibs_rec(8)
