# Part 1
# 2. Create a loop that prints numbers from 1 to 100.
# 3. For multiples of 3, instead of printing the number, print “Fizz”
# 4. For multiples of 5, instead of printing the number, print “Buzz”
# 5. For multiples of both 3 and 5, print “FizzBuzz”

# Counts to 100
1.upto(100) do |times|
	puts "Loop #{times}"
end

# Counts to 100 and in multiples of 3 prints fizz
1.upto(100) do |times|
    if times%3 == 0 
      puts "fizz"
    else
      puts "#{times}"
    end
end

# Counts to 100 and in multiples of 5 prints buzz
1.upto(100) do |times|
    if times%5 == 0 
      puts "buzz"
    else
      puts "#{times}"
    end
end

# Counts to 100 and in multiples of 5 prints buzz
1.upto(100) do |times|
    if times % 5 == 0
      puts "buzz"
    else
      puts "#{times}"
    end
end

# Counts to 100 and in multiples of 3 and 5 prints fizzbuzz
1.upto(100) do |times|
    if times % 3 == 0 || times % 5 == 0
      puts "Fizzbuzz"
    else
      puts "#{times}"
    end
end