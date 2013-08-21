MORSE_CODE = {
  "a" => ".-",
  "b" => "-...",
  "c" => "-.-.",
  "d" => "-..",
  "e" => ".",
  "f" => "..-.",
  "g" => "--.",
  "h" => "....",
  "i" => "..",
  "j" => ".---",
  "k" => "-.-",
  "l" => ".-..",
  "m" => "--",
  "n" => "-.",
  "o" => "---",
  "p" => ".--.",
  "q" => "--.-",
  "r" => ".-.",
  "s" => "...",
  "t" => "-",
  "u" => "..-",
  "v" => "...-",
  "w" => ".--",
  "x" => "-..-",
  "y" => "-.--",
  "z" => "--.."
}

def morse_encode(str)
  words = str.split   # make array of single words
  code = words.map { |word| morse_encode_word(word) } # replace each original word with Morse coded word
  code.join('  ')   # join all array elements into 1 string. Separate each word by 2 spaces.
end

def morse_encode_word(word)
  letters = word.split('')
  wordcode = letters.map { |letter| MORSE_CODE[letter] }
  wordcode.join(' ')  # join all Morse letters into 1 word, separating each letter by 1 space
end
