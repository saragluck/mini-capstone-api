# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

product = Product.create(name: "Apple", price: 1.40, image_url: "https://usapple.org/wp-content/uploads/2019/10/apple-pink-lady.png", description: "An edible fruit from an apple tree that is red and crunchy")
product = Product.create(name: "Corn", price: 0.50, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhNehPr_vsIRfEOjhzw-fM2TBHL3HMILoKiw&usqp=CAU", description: "It's corn!")
product = Product.create(name: "Pomegranate", price: 2.48, image_url: "https://www.news-medical.net/image.axd?picture=2020%2F12%2Fshutterstock_1291478515.jpg", description: "A plant to which one can be slightly allergic")

supplier = Supplier.create!(name: "Pomegranate person", email: "pomegranateperson@gmail.com", phone_number: "1234567890")
supplier = Supplier.create!(name: "Organic supplier", email: "organicsupplier@gmail.com", phone_number: "3475339035")
supplier = Supplier.create!(name: "Regular supplier", email: "regularsupplier@gmail.com", phone_number: "9490285904")
