def wonky_coins(n)
	return 1 if n == 0	# if given 0 coin, return 1
	answer = []
	divided = divide(n)

	while !allzeroes?(divided)	# keep looping through divided array until it's completely full of 0's

		divided.each do |d|
			d == 0 ? answer << 0 : answer << divide(d)	# if array element = 0, keep it in answer array. If not, divide it.
		end

		divided = flatarray(answer)	# redefines divided as 1 level array of the answer
		answer = []		# clear answer array
	end 

	divided.count		# Counts everything inside final divided array, which should be all 0's.
end

def divide(x)
	[x/2, x/3, x/4]	# makes array of 3 numbers, all rounded down to integer values
end

def flatarray(array)	# turns nested array into flat array (no arrays inside arrays)
	array.flat_map { |a| a }
end

def allzeroes?(array)
	array.all? { |a| a == 0 }
end

=begin  **** Much better answer ****

def wonky_coins(n)
  return 1 if n == 0
  return 3 if n == 1

  # call wonky_coins from inside itself. This is called *recursion*.
  return wonky_coins(n / 2) + wonky_coins(n / 3) + wonky_coins(n / 4)
end

=end