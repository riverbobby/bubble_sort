require 'pry-byebug'

def bubble_sort(array)
  last_index = array.count - 1

  loop do
    swapped = false

    for i in 0..last_index - 1 do
      next unless array[i] > array[i + 1]

      temp = array[i]
      array[i] = array[i + 1]
      array[i + 1] = temp
      swapped = true
    end

    last_index -= 1

    break if swapped == false || last_index <= 0
  end

  array
end

p bubble_sort([1, 4, 3, 78, 2, 10, 2])
