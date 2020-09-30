class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all.page(params[:page])
  end
end
