require 'faraday'
require 'json'

print " Where do you care about? :"
location = gets.chomp

puts location

loop do 
response = Faraday.get("http://api.openweathermap.org/data/2.5/weather?q=#{location}")
parsed = JSON.load(response.body)

	puts parsed['main']['temp']
	sleep(10)
end