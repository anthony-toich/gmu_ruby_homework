# Return a reversed copy of the array
def reverse(an_array)
  # TODO write your code here
  reversedArray = Array.new
  an_array.each do |arrayElement|
    reversedArray.unshift arrayElement
  end
  an_array = reversedArray
end

# Return a map of letters and counts of letters
# Letters should be lowercase before counting
# For example, histogram('Hello') returns {'h'=>1,'e'=>1,'l'=>2,'o'=>1}
def histogram(a_string)
  # TODO write your code here
  frequencies = Hash.new(0)
  letters = a_string.split("")
  letters.each{|letter| frequencies[letter]+=1}
  frequencies = frequencies.sort_by{|a,b|b}
  frequencies.reverse!
end

# Sum all the numbers in the array
# an_array can contain lots of different things
# Be sure to only sum the numbers
# (Hint: the is_a? method might be useful here)
def sum_only_numbers(an_array)
  # TODO write your code here
  arraySum = 0
  an_array.each do |arrayElement|
    if arrayElement.is_a?(Numeric) == true
      arraySum += arrayElement
    end
  end
  puts arraySum
end

# For i from 1 to 100, return an array.
# The elements in the array should follow this algorithm:
# If i is a multiple of 3, the element is 'Fizz'
# If i is a multiple of 5, the element is 'Buzz'
# If i is a multiple of 3 and 5, the element is 'FizzBuzz'
# Otherwise, the element is simply the value of i
# For example [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', ..., 14, 'FizzBuzz', ...]
def fizzbuzz
  # TODO write your code here
  fbArray = Array.new
  i = 1
  #fbArray[0] = 0
  while i <= 100 do
    if i % 15 == 0
      fbArray[i] = "FizzBuzz"
    elsif i % 3 == 0
      fbArray[i] = "Fizz"
    elsif i % 5 == 0
      fbArray[i] = "Buzz"
    else
      fbArray[i] = i
    end
    i += 1
  end
  fizzbuzz = fbArray
end

# Uncomment a line to test the function you are developing
# Type "ruby functions.rb" at command line (Konsole) to run the script
# puts reverse([3,6,'dog']).inspect
#puts histogram('The Quick brown fox').inspect
#puts sum_only_numbers [4, 'foo', [ ], 27, :rain, 3.14]
#puts fizzbuzz.join("\n")
