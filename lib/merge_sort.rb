# frozen_string_literal: true

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
