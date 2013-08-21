def bubble_sort(arr)
	n = arr.length
	begin
		swapped = false

		(n - 1).times do |i|	# i loops from 0 to n - 2
			if arr[i] > arr[i + 1]
				arr[i], arr[i + 1] = arr[i + 1], arr[i]		# swap values
				swapped = true
			end
		end

		n -= 1	# don't need to sort last few items, since already sorted. Makes this faster.
	end until swapped == false

	arr
end
