class Coach < ApplicationRecord
  has_many :teams
  enum gender: [:male, :female]
  validates_presence_of :name, :bithdate, :gender

end
