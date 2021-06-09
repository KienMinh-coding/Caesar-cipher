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
  symbol_array = Array('!'..'?') - Array("0".."9") 

  if num_array.include? character
#    (((character.to_i) + number) % 10).to_s
    shift_factor(num_array, character, number)
  elsif alt_array.include? character
    shift_factor(alt_array, character, number)
  elsif alt_array_upcase.include? character
    shift_factor(alt_array_upcase, character, number)
  elsif symbol_array.include? character
    shift_factor(symbol_array, character, number)
  elsif character == " "
    character
  end
end

def shift_factor(array, character, number)
    return array[((array.find_index(character) + number) % array.size)]
end
puts caesar_cipher("What a string! 123", 5)
