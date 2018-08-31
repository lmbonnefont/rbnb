class CreateAnnonces < ActiveRecord::Migration[5.2]
  def change
    create_table :annonces do |t|
      t.references :pokemon, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :prix

      t.timestamps
    end
  end
end
