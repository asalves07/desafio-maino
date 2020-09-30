class WelcomeController < ApplicationController
  def index
    @total_coaches = AdminStatistic.total_coaches
    @total_teams = AdminStatistic.total_teams
    @total_pokemons = AdminStatistic.total_pokemons
  end
end
