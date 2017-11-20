# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

class_reviews = [[4, 2, "Denero", 0, 0, 0, "CS 61A"], [3, 4, "Hilfinger", 1, 0, 0, "CS 61A"]]

courses = [["CS 61A: The Structure and Interpretation of Programs", 1], ["CS 61B: Data Structures", 1]]

departments = ["Computer Science", "CS"]

schedule_reviews = [0, 5, "Cool beans"]

users = ["ruby@rails.com", "Ruby"]

class_reviews.each do |