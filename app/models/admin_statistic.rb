class AdminStatistic < ApplicationRecord
  EVENTS = {
    total_coaches: "TOTAL_COACHES",
    total_teams: "TOTAL_TEAMS",
    total_pokemons: "TOTAL_POKEMONS"
  }

  #Scopes
  scope :total_coaches, -> {
    find_by_event(EVENTS[:total_coaches]).value
  }
  scope :total_teams, -> {
    find_by_event(EVENTS[:total_teams]).value
  }
  scope :total_pokemons, -> {
    find_by_event(EVENTS[:total_pokemons]).value
  }

  def self.set_event(event)
    admin_statistic = AdminStatistic.find_or_create_by(event: event)
    admin_statistic.value += 1
    admin_statistic.save
  end
end
