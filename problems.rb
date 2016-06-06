=begin
returns a hash which contains key values of the even and the odd numbers
=end

numbers = [1,2,4,5,6,10]

Evens = []
Odds = []
ev_odd_hash = Hash.new

def even_odd(numbers)
	numbers.each do |num|
		if num.even?
			Evens << num
		else
			Odds << num
		end
	end
end

even_odd(numbers)

ev_odd_hash["Evens"] = Evens
ev_odd_hash["odds"] = Odds

puts "Problem #1"

puts ev_odd_hash

=begin
	
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000
	
=end

sum = 0

multiples = []

(1..999).each do |i|
	if i % 3 == 0 || i % 5 == 0
		multiples << i
	end
end

multiples.each do |x|
	sum += x
end

puts "Problem #2"

puts sum

=begin
	
Print the numbers 1-100. If the number is a multiple of 3, print "Fizz". If the number is
a multiple of five, print "buzz". If the number is a multiple of both three and five,
print "FizzBuzz"
	
=end

array = []

(1..100).each do |i|
	if i % 15 == 0
		array << "FizzBuzz"
	elsif i % 3 == 0
		array << "Fizz"
	elsif i % 5 == 0
		array << "Buzz"
	else
		array << i
	end
end

puts "Problem 3 (FizzBuzz)"

print array