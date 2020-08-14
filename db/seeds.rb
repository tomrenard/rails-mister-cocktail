require 'faker'

Cocktail.destroy_all

10.times do
  Cocktail.create(name: Faker::Hipster.word)
  Cocktail.photo.attach(io: file, filename: 'https://source.unsplash.com/random/200x200', content_type: 'image/png')
end


puts "created #{Cocktail.all.length}"

Ingredient.destroy_all

data = open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read
list = JSON.parse(data)
list["drinks"].each do |e|
  Ingredient.create(name: e['strIngredient1'])
end

puts "created #{Ingredient.all.length}"
