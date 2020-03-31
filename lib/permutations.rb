
## Check Permutations

# Write a method which will take two strings as arguments and returns true if one string is a permutation of the other.

# ```
# permutations?("hello", "ehllo") => true
# permutations?("pasta", "atsap") => true
# permutations?("Pizza", "Pasta") => false
# permutations?("", "") => true
# ```


def permutations?(string1, string2) 
  hash = {}
  if string1.length == string2.length
    string2.each_char do |char|
      if string1.include?(char)
        if hash[char] == true
          repeated = char+char
        hash[repeated] = true
        else 
          hash[char] = true
        end
      else 
        hash[char]= false
      end
    end
    else 
      return false
  end

  occurences = 0
  hash.keys.each do |key|
    if hash[key] == true
      occurences +=1
    end
  end

  if occurences == string1.length
    return true
  else 
    return false
  end

end