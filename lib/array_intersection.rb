## Array Intersection

# Design and implement a method that takes two integer arrays with unique values and returns their intersection in a new array.

# For example:

# ```
# intersection([2, 3, 4], [4, 5, 6]) => [4]
# intersection([50, 43, 25, 72], [25, 36, 43, 50, 80]) => [50, 25, 43]
# intersection([9, 30, 42], [56, 34, 90, 32]) => []
# ```



def intersection(list1, list2)
  shortlist = []
  longest = []
  if list1.length < list2.length
    shortlist = list1
    longest = list2
  else 
    shortlist = list2
    longest = list1
  end
  
  hash = {}
  shortlist.each do |item|
  if 
    longest.include?(item)
      hash[item] = true
    else 
      hash[item] = false
    end 
  end

  list3 = []
  hash.keys.each do |key|
    if 
      hash[key] == true
      list3<< key
    end
  end

  return list3
end