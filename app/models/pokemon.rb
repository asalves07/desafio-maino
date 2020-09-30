class Pokemon < ApplicationRecord
  has_and_belongs_to_many :teams
  validates_associated :teams
  # Kaminari
  paginates_per 9
end
