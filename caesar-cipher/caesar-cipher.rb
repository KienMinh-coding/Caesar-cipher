require 'pry'

def caesar_cipher(string, number)
  origin_array = string.split("")

  new_array = origin_array.map { |character| encrypt(character, number) }

  return new_array.join("")
end

def encrypt(character, number)
  num_array = Array("0".."9")
  alt_array = Array("a".."z")
  alt_array_upcase = Array("A".."Z")
  symbol_array = " !\"\#$%&'()*+,-./:;<=>?@[\]^_`{|}~".split("")

  if num_array.include? character
    (((character.to_i) + number) % 10).to_s
  elsif alt_array.include? character
    shift_factor(alt_array, character, number)
  elsif alt_array_upcase.include? character
    shift_factor(alt_array_upcase, character, number)

  elsif character == " "
    character
  end
end

def shift_factor(array, character, number)
    return array[((array.find_index(character) + number) % array.size)]
end
puts caesar_cipher("a 3bc5de", 1)
