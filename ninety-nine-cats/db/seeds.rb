# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Cat.destroy_all
ApplicationRecord.connection.reset_pk_sequence!(cats)

molly = Cat.create!(name: "Molly", sex: "M", color: "black",birth_date: "2015/01/01")
crookshanks = Cat.create!(name: "crookshanks", sex: "F", color: "white",birth_date: "2016/01/01")
stuart = Cat.create!(name: "stuart", sex: "M", color: "orange",birth_date: "2017/01/01")
andy = Cat.create!(name: "andy", sex: "F", color: "orange",birth_date: "2018/01/01")