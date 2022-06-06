# bubble_sort.rb
# method that does a bubble sort of an array and return a mutated array
# assume array contains at elast 2 elements

#bubble sort:
# iterate thru array
# compare pair of elements
# swap if first element > second element
# done iteration if no swapping make

def bubble_sort!(array)
  loop do
    swap_count = 0
    (array.size - 1).times do |i|
      first_elm = array[i]
      if array[i] > array[i + 1]
        array[i] = array[i + 1]
        array[i + 1] = first_elm
        swap_count += 1
      end
    end
    break if swap_count == 0
  end
  array
end



array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

# LS Solution:
def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      next if array[index - 1] <= array[index]
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end

    break unless swapped
  end
  nil
end

# Further Exploration: optimization ignoring tail
def bubble_sort_tail!(arr)
  round = 1
  loop do
    swap = false
    (arr.size - round).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swap = true
      end
    end

    break unless swap
    round += 1
  end
end
