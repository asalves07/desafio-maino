class Team < ApplicationRecord
  belongs_to :coach
  has_and_belongs_to_many :pokemons, dependent: :destroy
  accepts_nested_attributes_for :pokemons, :reject_if => :all_blank, allow_destroy: true
  validates_length_of :pokemons, maximum: 6
end
