def word_unscrambler(str, words)
  anagrams = []
  s = str.split('').sort  # sorted array of single letters for scrambled word

  words.each do |word|
    anagrams << word if word.split('').sort == s  # if a word in word list = anagram of scrambled word, add it to anagrams array
  end

  anagrams
end
