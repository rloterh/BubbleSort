def bubble_sort(sample_array)
  array_length = sample_array.length
  i = 0
  while i < (array_length - 1)
    j = 0
    while j < (array_length - 1) - i
      if sample_array[j] > sample_array[j + 1]
        temp = sample_array[j]
        sample_array[j] = sample_array[j + 1]
        sample_array[j + 1] = temp
      end
      j += 1
    end
    i += 1
  end
  p sample_array
end

# Test code
some_array = [8, 9, 4, 7, 12, 6, 2, 3, 5]
bubble_sort(some_array)

def bubble_sort_by(sample_array)
  array_length = sample_array.length
  i = 0
  while i < array_length - 1
    j = 0
    while j < (array_length - 1) - i
      if (yield sample_array[j], sample_array[j + 1]).positive?
        temp = sample_array[j]
        sample_array[j] = sample_array[j + 1]
        sample_array[j + 1] = temp
      end
      j += 1
    end
    i += 1
  end
  p sample_array
end

# Test code
test_run = bubble_sort_by(%w[the quick browned fox]) { |left, right| left.length - right.length }
puts test_run