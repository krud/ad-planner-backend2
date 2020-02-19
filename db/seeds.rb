# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Room.destroy_all 
User.destroy_all 

u1 = User.create(username: "pb", password: "fuck")

room1 = u1.rooms.create(name: "infant", max_capacity: 20)
u1.rooms.create(name: "infant2", max_capacity: 20)
u1.rooms.create(name: "5th", max_capacity: 30)

room1.students.create(first_name:"Jane", last_name:"Doe", age: 2)