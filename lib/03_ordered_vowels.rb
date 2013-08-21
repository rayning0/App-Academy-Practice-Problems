def ordered_vowel_words(str)
	ordered = []
	s = str.split		# makes array of single words from given string

	s.each do |word|
		ordered << word if ordered_vowel_word?(word)
	end

	ordered.join(' ')	# turns array back into 1 string
end

def ordered_vowel_word?(word)	# are this word's vowels in alphabetical order?
	letters = word.downcase.split('').uniq	# makes array of this word's unique letters
	letters.select! { |letter| letter =~ /[aeiou]/ }	# makes array ONLY of vowels in this word, with regular expression

	letters.sort == letters ? true : false	# if array of alphabetically sorted vowels = array of vowels, return true, else false.
end
