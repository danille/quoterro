# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

quotes_text = ["Don't cry because it's over, smile because it happened.",
               "Two things are infinite: the universe and human stupidity; and I'm not sure about the universe.",
               "Be who you are and say what you feel, because those who mind don't matter, and those who matter don't mind.",
               "Be the change that you wish to see in the world.",
               "In three words I can sum up everything I've learned about life: it goes on.",
               "No one can make you feel inferior without your consent.",
               "If you tell the truth, you don't have to remember anything.",
               "A friend is someone who knows all about you and still loves you.",
               "Always forgive your enemies; nothing annoys them so much.",
               "To live is the rarest thing in the world. Most people exist, that is all.",
               "I am so clever that sometimes I don't understand a single word of what I am saying.",
               "To be yourself in a world that is constantly trying to make you something else is the greatest accomplishment.",
               "Insanity is doing the same thing, over and over again, but expecting different results.",
               "It is better to be hated for what you are than to be loved for what you are not.",
               "Good friends, good books, and a sleepy conscience: this is the ideal life.",
               "The fool doth think he is wise, but the wise man knows himself to be a fool.",
               "Life is what happens to us while we are making other plans.",
               "We are all in the gutter, but some of us are looking at the stars."
]

quotes_text.each do |quote_text|
  Quote.create({text: quote_text})
end