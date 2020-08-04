def bubble_sort(test_array)
    size = test_array.size
    i = 0
    while i < (size - 1)
        j = 0
        while j < size - i - 1
            if more (test_array[j], test_array[j + 1])
                #Swapping
                temp = test_array[j]
                test_array[j] = [j + 1]
                test_array[j + 1] = temp 
            end
            j++
        end
        i++
    end
end
