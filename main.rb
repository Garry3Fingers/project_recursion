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

# rubocop:disable Metricks/AbcSize
# rubocop:disable Metricks/MethodLength

def merge(arr_b, arr_c, arr = [])
  i = j = a = 0

  while i <= arr_b.length - 1 && j <= arr_c.length - 1
    if arr_b[i] < arr_c[j]
      arr[a] = arr_b[i]
      i += 1
    else
      arr[a] = arr_c[j]
      j += 1
    end
    a += 1
  end

  if i == arr_b.length
    arr.push(arr_c[j..])
  else
    arr.push(arr_b[i..])
  end

  arr.flatten
end

# rubocop:enable Metricks/AbcSize
# rubocop:enable Metricks/MethodLength

def merge_sort(arr)
  if arr.length <= 1
    arr
  else
    n = arr.length / 2
    arr_b = arr.slice!(0..n - 1)
    arr_c = arr.slice!(0..- 1)
    b = merge_sort(arr_b)
    c = merge_sort(arr_c)
    merge(b, c)
  end
end

p merge_sort([8, 3, 2, 9, 7, 1, 5, 4])
