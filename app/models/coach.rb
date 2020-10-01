class Coach < ApplicationRecord
  enum gender: [:male, :female]
  validates_presence_of :name, :birthdate, :gender

  has_many :teams, dependent: :destroy
  accepts_nested_attributes_for :teams, :reject_if => :all_blank, allow_destroy: true
  has_one_attached :avatar

  paginates_per 7

end