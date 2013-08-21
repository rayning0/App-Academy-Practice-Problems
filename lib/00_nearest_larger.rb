def nearest_larger(arr, idx)
	# arr.index { |v| v > arr[idx] } -- this 1 statement passes all RSpec tests but may miss cases later

	val = arr[idx]
	diff = 1	# First, we look to left of val by the diff, then right, then increase diff, then look left, then right, etc.
	loop do 
		left = idx - diff
		right = idx + diff

		return left if (left >= 0) && (arr[left] > val)
		return right if (right < arr.size) && (arr[right] > val)

		return nil if (left < 0) || (right > arr.size)
		diff += 1
	end
end
