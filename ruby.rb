dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

#convert string to downcase then to an array.
#then for each element loop through dictionary and if included determine if hash has key
#if key exists, iterate the value, if does not exist, add key with value 1
#if you try to iterate to an empty key/value pair you get the nil noMethodError #askmehowIknow
def substring(string, dictionary)
  hash = {}
  string_array = string.downcase.split
  string_array.each do |i|
    dictionary.each do |s|
     if i.include?(s)
        if hash.has_key?(s)
          hash[s] += 1
        else hash[s] = 1
        end
      end
    end
  end
  p hash
end

substring("below low low cuthbert blows his ownership hornbill", dictionary)