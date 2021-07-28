# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Picture.delete_all
pic1 = Picture.create!(title: "Bunny", description: "Just look at this bunny", url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShdkAV0-HG-Th31xAXrmwGBSvDaeImc5VX7w&usqp=CAU")
pic2 = Picture.create!(title: "Bird", description: "Standing on a branch and yelling", url: "http://40.media.tumblr.com/e0496fd38f282d7996bdce8618e6d2a5/tumblr_n7fwydGtMF1tu0z5no1_500.jpg")
pic3 = Picture.create!(title: "Guinea Pig", description: "A pepper for a hat", url: "http://i.imgur.com/5bNMuVa.jpg")