class Pokemon < ApplicationRecord
  has_and_belongs_to_many :teams

  # Callback
  after_create :set_statistic

  private
  def set_statistic
    AdminStatistic.set_event(AdminStatistic::EVENTS[:total_pokemons])
  end
end
