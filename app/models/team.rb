class Team < ApplicationRecord
  belongs_to :coach

  has_and_belongs_to_many :pokemons
  validates :pokemons, length: {minimum: 1, maximum: 6}
  validates :name, presence: true

  paginates_per 6

end