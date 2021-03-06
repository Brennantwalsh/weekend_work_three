# Complete the method called sum_of_range, which will accept an array containing
# two numbers, and return the sum of all of the whole numbers within the range of those
# numbers, inclusive.

def sum_of_range(array)
  first_number = 0
  second_number = 0
  array.each do |instance|
    if instance > second_number

      first_number = second_number
      second_number = instance
      
    else first_number = instance
    end
  end
  range = first_number..second_number
  sum = 0
  
  range.each do |number|
    sum += number.abs
    
  end
  sum
  
end

# Driver code - don't touch anything below this line.
puts "TESTING sum_of_range..."
puts

result = sum_of_range([1, 4])

puts "Your method returned:"
puts result
puts

if result == 10
  puts "PASS!"
else
  puts "F"
end

result = sum_of_range([4, 1])

puts "Your method returned:"
puts result
puts

if result == 10
  puts "PASS!"
else
  puts "F"
end