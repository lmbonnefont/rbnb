Annonce.destroy_all
Pokemon.destroy_all
User.destroy_all

user = {name: "Bonnefont", surname: "Louis-Marie", email: "lm.bonnefont@live.fr", password: "123456"}
lm = User.create!(user)

require 'open-uri'
require 'nokogiri'

name = []
type = []

url = "http://www.poketips.fr/liste/"

html_file = open(url).read
html_doc = Nokogiri::HTML(html_file)

html_doc.search('.column-3').each do |element|
   name << element.text.strip
end

html_doc.search('.column-4').each do |element|
   type << element.text.strip
end

for i in 0..150
  pokemon = Pokemon.new
  pokemon.type_pokemon = type[i]
  pokemon.name = name[i]
  pokemon.user = lm
  pokemon.save!
end

pokemons = Pokemon.all

pokemons.each do |pokemon|
    url1 = "http://www.poketips.fr/liste/#{pokemon.name}"
    p url1
end


