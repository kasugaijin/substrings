dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

#Convert string to array
#iterate over array and push to new array all items that match a word in dictionary
def substring(string, dictionary)
  string.downcase!
  string_array = string.split
  match_array = []
  count_array = []
  result = {}
  
  #if substring from dictionary is in 'string' push substring to match_array
  #count the number of times each dictionary substring occurs in string and push to count_array, remove zeros
  dictionary.each do |i|  
    if string_array.any? {|s| s.include?(i)}
    match_array.push(i)
    end
    count = string_array.count {|s| s.include?(i)}
    count_array.push(count)
    count_array.delete(0)
  end
  
  #final result is a hash made from two equal length arrays, match_array and count_array
  #where one array is the key and the other is the value
  #this is a convenient shorthand - thank you Ruby!
  result = match_array.zip(count_array).to_h

  p "these are the substrings from dictionary that match string #{match_array}"
  p "these matches occur this many times #{count_array}"
  p "the final hash is #{result}"
end

substring("below", dictionary)
substring("Howdy partner, sit down! How's it going", dictionary)