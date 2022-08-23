require 'pry-byebug'

def bubble_sort(array)
	last_index = array.count - 1
	
	loop do
		swapped = false
		
		for i in 0..last_index - 1 do
			if array[i] > array[i + 1]
				temp = array[i]
				array[i] = array[i + 1]
				array[i + 1] = temp
				swapped = true
			end
		end

		last_index = last_index - 1

		if swapped == false || last_index <= 0
			break			
		end
	end

	return array
end

p bubble_sort([1,4,3,78,2,10,2])