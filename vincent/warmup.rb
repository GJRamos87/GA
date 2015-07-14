def reversalizer(str)
	l = str.length - 1
	answer = ""
	while l >= 0
		answer << str[l]
		l -= 1
	end
	return answer
end

puts reversalizer('hello')