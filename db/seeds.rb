# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
UserWorkspace.delete_all
Workspace.delete_all
Board.delete_all
User.delete_all
List.delete_all
Plan.delete_all

#---------- PLANS ----------
lite = Plan.create(name: 'Lite', price_cents: 200, price_currency: 'USD',
                   description: 'Perfect for small teams')
pro = Plan.create(name: 'Pro', price_cents: 200, price_currency: 'USD',
                   description: 'The best option for a company')
ultimate = Plan.create(name: 'Ultimate', price_cents: 200, price_currency: 'USD',
                   description: 'You wont have limits')  


#---------- USERS ----------
user1 = User.new(email: 'johndoe@example.com', password: 'doepass', first_name: 'John', last_name: 'Doe',
                 role: 'manager')
user1.skip_confirmation!
user1.save!
user2 = User.new(email: 'luisbanderas@example.com', password: 'luispass', first_name: 'Luis', last_name: 'Banderas',
                 role: 'regular')
user2.skip_confirmation!
user2.save!
user3 = User.new(email: 'userregular@example.com', password: 'regularpass', first_name: 'Jane', last_name: 'Smith',
                 role: 'regular')
user3.skip_confirmation!
user3.save!
user4 = User.new(email: 'useradmin@example.com', password: 'adminpass', first_name: 'Jazmin', last_name: 'Riveroll',
                 role: 'admin')
user4.skip_confirmation!
user4.save!

manager = User.find_by(email: 'johndoe@example.com')
plan = Plan.find_by(name: 'Lite')

#---------- WORKSPACES ----------
workspace = Workspace.create(name:'John Workspace', plan_id: plan.id, manager_id: manager.id)

workspace.boards.create(name: 'Task Management App', visibility: 'public')
workspace.boards.create(name: 'ToDo App', visibility: 'public')
workspace.boards.create(name: 'Musirockstars', visibility: 'public')
workspace.boards.create(name: 'Photo_app', visibility: 'public')

board1 = Board.find_by(name: 'Task Management App')
board2 = Board.find_by(name: 'ToDo App')
board3 = Board.find_by(name: 'Musirockstars')
board4 = Board.find_by(name: 'Photo_app')

board1.lists.create(name: 'To Do')
board1.lists.create(name: 'Doing')
board2.lists.create(name: 'To Do')
board2.lists.create(name: 'Doing')
board3.lists.create(name: 'To Do')
board3.lists.create(name: 'Doing')
board4.lists.create(name: 'To Do')
board4.lists.create(name: 'Doing')

workspace.user_workspaces.create(user_id: user1.id)
workspace.user_workspaces.create(user_id: user2.id)
workspace.user_workspaces.create(user_id: user3.id)
