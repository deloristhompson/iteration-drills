array = [28214, 63061, 49928, 98565, 31769, 42316, 23674, 3540, 34953, 70282, 22077, 94710, 50353, 17107, 73683, 33287, 44575, 83602, 33350, 46583]
# What is the sum of all the numbers in array?
sum = array.inject(0) { |sum, num| sum += num }
puts "The sum of all the numbers is #{sum}\n"
# How would you print out each value of the array?
puts "Arrays printed:\n"
array.each do |printing|
  puts printing
end
# What is the sum of all of the even numbers?
numbers = []
array.each do |number, odd|
  if number.even?
    numbers << number
  end
end
even_sum = numbers.inject(0) {|sum,num| sum += num}
puts "\nSum of all even numbers: #{even_sum}"

# What is the sum of all of the odd numbers?
odd_numbers = []
array.each do |number, even|
  if number.odd?
    odd_numbers << number
  end
end
odd_sum = odd_numbers.inject(0) {|sum,num| sum += num}
puts "\nSum of all odd numbers: #{odd_sum}"

# What is the sum of all the numbers divisble by 5?
divisible_by_five = 0
array.each do |num|
  if num % 5 == 0
    divisible_by_five += num
  end
end
puts "\nSum of numbers divisible by 5: #{divisible_by_five}"

# What is the sum of the squares of all the numbers in the array?
sum_of_squares = []
array.map do |num|
  num = num ** 0.5
  sum_of_squares << num
end
sum = sum_of_squares.inject(0) {|sum,num| sum += num}
puts "Sum of the squares of all the numbers: #{sum}"

array = ["joanie", "annamarie", "muriel", "drew", "reva", "belle", "amari", "aida", "kaylie", "monserrate", "jovan", "elian", "stuart", "maximo", "dennis", "zakary", "louvenia", "lew", "crawford", "caitlyn"]
# How would you print out each name backwards in array?
reverse = []
array.select {|name| reverse << name.reverse}
puts "Names reversed: "
puts reverse

# What are the total number of characters in the names in array?
puts "Total number of characters: #{array.join.length}\n"
# How many names in array are less than 5 characters long?
names = []
array.each do |name|
  if name.length < 5
    names << name
  end
end
puts "Total names in array less than 5 characters long: #{names.length}"

# How many names in array end in a vowel?
ends_in_vowel = array.select do |name|
  name.end_with?("a","e","i","o","u","y")
end
puts "Total names that end in a vowel: #{ends_in_vowel.length}"

# How many names in array are more than 5 characters long?
five_characters_long = []
array.each do |name|
  if name.length > 5
    five_characters_long << name
  end
end
puts "Total names in array more than 5 characters long: #{five_characters_long.length}"

# How many names in array are exactly 5 characters in length?
exactly_five = []
array.each do |name|
  if name.length == 5
    exactly_five << name
  end
end
puts "Total names in array exactly 5 characters long: #{exactly_five.length}"
