class WelcomeController < ApplicationController
  def index
    @coaches = Coach.all
    @teams = Team.all
    @pokemons = Pokemon.all
  end
end
