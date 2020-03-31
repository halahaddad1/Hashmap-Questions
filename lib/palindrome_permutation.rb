## Could Be A Palindrome

# Write a method which takes a string as an argument and returns true if the letters could be re-arranged into a palindrome.

# ```
# palindrome_permutation?("hello") => false
# palindrome_permutation?("carrace") => true # because racecar is a palindrome
# ```


def palindrome_permutation?(string)
  count = {}
  x = 0
    string.each_char do |char|
      count[char]= string.count(char)
    end
    count.keys.each do |key|
      if count[key]%2 != 0
        x +=1
      end
    end
    if x == 0 || x == 1
      return true
    else 
      return false
    end
end