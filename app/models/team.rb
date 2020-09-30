class Team < ApplicationRecord
  belongs_to :coach
  has_and_belongs_to_many :pokemons
  validates_length_of :pokemons, maximum: 6
end