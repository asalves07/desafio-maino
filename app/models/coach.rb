class Coach < ApplicationRecord
  enum gender: [:male, :female]
  validates_presence_of :name, :bithdate, :gender

  has_many :teams

end
