# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

sponsorships = Item.create([{ 
    name: 'Level One: Thank You Note', 
    price: 20, 
    description: 'I will mail you a hand-drawn thank you note.'
    },
  {
    name: 'Level Two: Flat Stanley',
    price: 50,
    description: 'I will mail you a hand-drawn thank you note and draw a picture of your face. While at RubyConf, I will take at least one selfie with the drawing of your face, <a href="http://en.wikipedia.org/wiki/Flat_Stanley#The_Flat_Stanley_Project">Flat Stanley style</a>.'
  },
  {
    name: 'Level Three: Flat Stanley PLUS!',
    price: 100,
    description: 'Everything above, PLUS I will mail you the original drawing of your face.'
  },
  {
    name: 'Level Four: MASTER OF THE UNIVERSE!',
    price: 300,
    description: "Get every single wonderful thing from the previous levels, PLUS I will make a very special 'thank you' video calling you out by name!"
  }
  ])
