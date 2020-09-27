class Coach < ApplicationRecord
  enum gender: [:male, :female]
  validates_presence_of :name, :bithdate, :gender

  has_many :teams, dependent: :destroy
  accepts_nested_attributes_for :teams, :reject_if => :all_blank, allow_destroy: true

end
