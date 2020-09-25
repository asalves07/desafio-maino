class CreateJoinTableTeamPokemon < ActiveRecord::Migration[6.0]
  def change
    create_join_table :teams, :pokemons do |t|
      # t.index [:team_id, :pokemon_id]
      # t.index [:pokemon_id, :team_id]
    end
  end
end
