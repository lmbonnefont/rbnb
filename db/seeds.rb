Annonce.destroy_all
Pokemon.destroy_all
User.destroy_all

user = {name: "Bonnefont", surname: "Louis-Marie", email: "lm.bonnefont@live.fr", password: "123456"}
lm = User.create!(user)

pok = {name: "Pikachu", santé: 100, description: "Mignon, balance des éclairs. Gare à la team Rocket !"}
pokemon = Pokemon.new(pok)
pokemon.user =  lm
pokemon.save!
