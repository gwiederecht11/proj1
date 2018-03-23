class CreatePokemonModels < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemon_models do |t|
      t.string :name
      t.integer :level
      t.integer :trainer_id
      t.integer :ndex

      t.timestamps
    end
  end
end
