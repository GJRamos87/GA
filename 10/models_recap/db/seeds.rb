# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Company.create(name: "General Assembly" , number_of_employees: 230)
Company.create(name: "General Underpants" , number_of_employees: 23)

Album.create(name: "Wu-Tang Greatest Hitz" , creator_name: 'GhostFace',description:'This is a good album')
Album.create(name: "Sesame Street" , creator_name: 'BigBird',description:'From the Streets')
Album.create(name: "Merlin's Vengance" , creator_name: 'Murs',description:'Back with a Vengance')