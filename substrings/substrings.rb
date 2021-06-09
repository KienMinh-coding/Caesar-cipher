def substrings word, array
  word_arr = word.gsub(/[^0-9A-Za-z ]/, ' ').split(" ")
  array.reduce(Hash.new(0)) do |result, item|
    word_arr.each do |value|
      if value.downcase.include? item
        result[item] += 1
        result
      else
        result
      end
    end
    result
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
