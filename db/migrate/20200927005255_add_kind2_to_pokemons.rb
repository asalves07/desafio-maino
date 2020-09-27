class AddKind2ToPokemons < ActiveRecord::Migration[6.0]
  def change
    add_column :pokemons, :kind2, :string
  end
end
