class MyAwesomeClass
end

my_instance = MyAwesomeClass.new

puts my_instance.class


puts MyAwesomeClass.object_id


another_instance = MyAwesomeClass.new
puts another_instance.object_id