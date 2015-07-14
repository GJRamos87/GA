# alphabet = ('a'..'z').to_a 

# reversed_abc = alphabet.reverse

# split_rev_abc = reversed_abc.each_slice(3).to_a

# print split_rev_abc

# rest = alphabet.split(/, /);
# print rest

# review Array
# #reverse String
# #split Array
# #push(<<) array indices.
# Create a function encrypt which takes a string as an argument. It should return a string with letters from the string passed in, but from a reverse alphabet. A becomes Z, B becomes Y, and so forth.
# Bring up useful stuff like ranges that save us having to type the whole alphabet with quotes and commas.
# Create another function decrypt which accepts the encrypted string as an argument and spits out the original string. (edited)


class Ciper 
	def initialize
		@alphabet = ('a'..'z').to_a
   	@reversed = alphabet.reverse
	end

	def encrypt(str)
	    i = 0
	    rev_str = ""
	    while i < str.length
	        index = @alphabet.index(str[i])
	        rev_str << @reversed[index]
	        i += 1
	    end
	    return rev_str
	end

	def decrypt(encr)
	    return encrypt(encr)
	end

end

secret = Ciper.new
puts secret.encrypt('secret')