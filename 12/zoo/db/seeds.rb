# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Animal.create(name: "Tiger", gender: 'Male', size:5, age:9)
Animal.create(name: "Monkey", gender: 'Female', size:1, age:2)
Animal.create(name: "Turtle", gender: 'Male', size:2, age:10)