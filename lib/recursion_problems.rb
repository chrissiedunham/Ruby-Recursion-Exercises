#Problem 1: You have array of integers. Write a recursive solution to find
#the sum of the integers.

def sum_recur(array)
  return 0 if array.empty?
  dup = array.dup
  return dup[0] if dup.length == 1
  sum = dup.pop + sum_recur(dup)

end


#Problem 2: You have array of integers. Write a recursive solution to
#determine whether or not the array contains a specific value.

def includes?(array, target)
  return false if array.empty?
  dup = array.dup
  return true if dup.pop == target
  includes?(dup, target)
end


#Problem 3: You have an unsorted array of integers. Write a recursive
#solution to count the number of occurrences of a specific value.

def num_occur(array, target)
  dup = array.dup
  if dup.length ==  1 
    return (dup.pop == target) ? 1 : 0
  end
  increment_count_by = (dup.pop == target) ? 1 : 0
  count = increment_count_by + num_occur(dup, target)
end


#Problem 4: You have array of integers. Write a recursive solution to
#determine whether or not two adjacent elements of the array add to 12.

def add_to_twelve?(array)
  return false if array.length == 1
  return true if array[0] + array[1] == 12
  dup = array.dup
  dup.shift
  add_to_twelve?(dup)
end


#Problem 5: You have array of integers. Write a recursive solution to
#determine if the array is sorted.

def sorted?(array)
  return [] if array.empty?
  return true if array.length == 1
  return false if array[0] > array[1]
  dup = array.dup
  dup.shift
  sorted?(dup)
end


#Problem 6: Write the code to give the value of a number after it is
#reversed. Must use recursion. (Don't use any #reverse methods!)

def reverse(number)
  
  digits = number.to_s.split("").dup
  return number if digits.length == 1
  last = digits.pop
  p "last == #{last.inspect}"
  new_num = Integer(digits.to_s)
  Integer(last << reverse(new_num).to_s)
end
p reverse(3421)

