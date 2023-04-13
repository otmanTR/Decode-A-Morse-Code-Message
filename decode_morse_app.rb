# decoding a character using with mapping hashes

def get_char(char)
  morse_alphabet = {
    '.-' => 'A',
    '-...' => 'B',
    '-.-.' => 'C',
    '-..' => 'D',
    '.' => 'E',
    '..-.' => 'F',
    '--.' => 'G',
    '....' => 'H',
    '..' => 'I',
    '.---' => 'J',
    '-.-' => 'K',
    '.-..' => 'L',
    '--' => 'M',
    '-.' => 'N',
    '---' => 'O',
    '.--.' => 'P',
    '--.-' => 'Q',
    '.-.' => 'R',
    '...' => 'S',
    '-' => 'T',
    '..-' => 'U',
    '...-' => 'V',
    '.--' => 'W',
    '-..-' => 'X',
    '-.--' => 'Y',
    '--..' => 'Z'
  }
  morse_alphabet[char]
end

puts get_char('.-')

# decoding a word using with get_char and mapping hashes

def get_word(word)
  word.split.map { |char| get_char(char) }.join
end

puts get_word('-- -.--   -. .- -- .')

# decoding a santences with using get_sentences, get_word and mapping hashes

def get_sentences(sentence)
  sentence.split('  ').map { |word| get_word(word) }.join('  ')
end

puts get_sentences('      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
