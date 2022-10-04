# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

UserBoard.delete_all
Board.delete_all
User.delete_all
List.delete_all
Plan.delete_all

plans = Plan.create([
  {name: 'Lite', price_cents: 200, price_currency: 'USD', description: 'Perfect for small teams'},
  {name: 'Pro', price_cents: 200, price_currency: 'USD', description: 'The best option for a company'},
  {name: 'Ultimate', price_cents: 200, price_currency: 'USD', description: 'You wont have limits'},
])


user1 = User.new(email: 'johndoe@example.com', password: 'doepass', first_name: "John", last_name: "Doe", role: "manager")
user1.skip_confirmation!
user1.save!
user2 = User.new(email: 'luisbanderas@example.com', password: 'luispass', first_name: "Luis", last_name: "Banderas", role: "regular")
user2.skip_confirmation!
user2.save!
user3 = User.new(email: 'userregular@example.com', password: 'regularpass', first_name: "User", last_name: "Regular")
user3.skip_confirmation!
user3.save!
user4 = User.new(email: 'useradmin@example.com', password: 'adminpass', first_name: "User", last_name: "Admin", role: "admin")
user4.skip_confirmation!
user4.save!

manager = User.find_by_email('johndoe@example.com')

manager.boards.create(name: 'Task Management App', visibility: 'public')
manager.boards.create(name: 'ToDo App', visibility: 'public')
manager.boards.create(name: 'Musirockstars', visibility: 'public')
manager.boards.create(name: 'Photo_app', visibility: 'public')


board1 = Board.find_by_name('Task Management App')
board2 = Board.find_by_name('ToDo App')
board3 = Board.find_by_name('Musirockstars')
board4 = Board.find_by_name('Photo_app')

board1.lists.create(name: 'To Do')
board1.lists.create(name: 'Doing')
board2.lists.create(name: 'To Do')
board2.lists.create(name: 'Doing')
board3.lists.create(name: 'To Do')
board3.lists.create(name: 'Doing')
board4.lists.create(name: 'To Do')
board4.lists.create(name: 'Doing')
