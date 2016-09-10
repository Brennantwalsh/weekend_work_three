# Complete the method called mutation?, which will accept two strings as a parameter
# and return true if all the letters from the second string are contained within
# the first string, and false otherwise.

def mutation?(base_word, mutation)
  first_word = base_word.split(//)
  second_word = mutation.split(//)
  second_word_length_check = 0
  second_word.each do |letter|
    if first_word.include?(letter)
      second_word_length_check += 1
    end
  end
  second_word.length == second_word_length_check
end

# Driver code - don't touch anything below this line.
puts "TESTING mutation?..."
puts

result = mutation?("burly", "ruby")

puts "Your method returned:"
puts result
puts

if result == true
  puts "PASS!"
else
  puts "F"
end

result = mutation?("burly", "python")

puts "Your method returned:"
puts result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end