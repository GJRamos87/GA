# In excrutiating detail, describe line by line, (sometimes word by word)
# everything that is happening
# keep in mind, not all of this will make sense!!
# this is just to see everything we've learned in one place, not to make a real program.

# declares a var and sets its value to Bobby Tables
name = "Bobby Tables"
# prints the var on the screen
puts name

# This prints the quetions to the screen and then captures the answer in a var called birthday using get. Also removes any spaces with chomp
puts "Give me your name:"
birthday = gets.chomp


# declares a method named format_name which passes two arguments name and birthday 
def format_name(name, birthday)
  # prints sentence on screen and uses interprelation to pass the arguments to the statement dynamically.
  puts "Hi #{name}, your bday is #{birthday}. Did you know that?"
end

# this is a var with stores an array of locations
places = ['San Diego', 'San Francisco', 'San Antonio']

# This is a hash which is dictionary-like collection of unique keys and their values associated by hash rockets. 
pokemon_counters = {
  "fire" => "water",
  "water" => "leaf",
  "leaf" => "fire"
}


# this is a loop which counts from 0 to 99 but while it counts it prints hello then does infinite loops.
count = 0
while 99 > count
  puts "Hello"
  puts count * ( count % 2 )
  count += 1
end

# array loops .each iterates thru each object associates them to a letter then prints them each as xyz seperately.
['Hi', 'Hello', 'Bienvenidos'].each do |xyz|
  puts xyz
end

# This uses the hash called pokemon_counters stores stores the keys and values in the arguments power and counter then prints on the screen using interprelation 
pokemon_counters.each do |power, counter|
  puts "#{power} is countered by #{counter}"
end

# The require method does what include does in most other programming languages: run another file. It also tracks what you've required in the past and won't require the same file twice. To run another file without this added functionality, you can use the load method.
require 'json'
require 'securerandom'

# runs the file but only if its in the same folder
require_relative './hello'


# class method var???!?!?!?
some_random_variable = :hello


# this is a class which contains 2 methods - park_and_rec and ps - those two methods print the two statements 
class TVShow
  def parks_and_rec
    puts "I'm watching it as I make this homework and it's all I could think of"
  end

  def ps
    puts "it's the best show ever made no denial I will fail you"
  end
end

# this instantiates the class and loops from 0 to 9 bagilion and calls the function ps from the TvShow class.
show = TVShow.new
0.upto(99999999999999999) do
  show.ps
end


# this is class backpack which contain an attribute called contents - its has a method thats called initialize which will automatically run when the file is executed - it then uses the self method which means to run from parent object which in this case is contents.
class Backpack
  attr_accessor :contents

  def initialize(contents)
    self.contents = contents
  end
end


# this is a var that instantiates the backpack class and associates the following attributes to the object
backpack = Backpack.new("Laptop, Umbrella, Every Parks and Rec DVD")

# class with the attributes name and birthday 
class Person
  attr_accessor :name, :birthday  
end 


# class that has a function in it but also inherits all the person class attributes as well. 
class LeslieKnope < Person
  def description
    puts "Basically the best person ever"
  end
end

# Instanstiates LeslieKnope class method
LeslieKnope.new.description





