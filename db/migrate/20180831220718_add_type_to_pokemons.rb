class AddTypeToPokemons < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :type, :string
  end
end
