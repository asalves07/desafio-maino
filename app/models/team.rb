class Team < ApplicationRecord
  belongs_to :coach
  has_and_belongs_to_many :pokemons

  # Callback
  after_create :set_statistic

  private
  def set_statistic
    AdminStatistic.set_event(AdminStatistic::EVENTS[:total_teams])
  end
end