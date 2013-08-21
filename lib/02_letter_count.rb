def letter_count(str)
	freq = {}		
	s = str.split('')		# create array made of each character in string

	s.each do |letter|
		freq[letter] = s.count(letter) if letter != ' '	# makes hash where key = letter, value = frequency of letter in string. Ignore spaces.
	end

	freq
end
