class PokemonsController < ApplicationController
  def capture
    pokemon = Pokemon.find(params[:id])
    pokemon.trainer = current_trainer
    pokemon.save
    redirect_to root_path
  end

  def damage
    pokemon = Pokemon.find(params[:id])
    pokemon.health = pokemon.health - 10
    if pokemon.health <= 10
      pokemon.destroy
    else
      pokemon.save
    end
    trainer = current_trainer
    redirect_to trainer_path(id: trainer.id)
  end

  def new
    @pokemon = Pokemon.new
    @trainer = current_trainer
  end

  def create
    @pokemon = Pokemon.create(pokemons_params)
    @pokemon.level = 1
    @pokemon.health = 100
    @pokemon.trainer = current_trainer
    if @pokemon.save
      flash[:notice] = "New Pokemon!"
      redirect_to trainer_path(id: @pokemon.trainer_id)
    else
      flash[:error] = @pokemon.errors.full_messages.to_sentence
      redirect_to new_pokemon_path
    end
  end

  private
  def pokemons_params
    params.require(:pokemon).permit(:name, :ndex)
  end
end
