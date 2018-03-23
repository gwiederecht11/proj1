class RenamePokemonModelsToPokemons < ActiveRecord::Migration[5.1]
  def self.up
  rename_table :pokemon_models, :pokemons
end

end
