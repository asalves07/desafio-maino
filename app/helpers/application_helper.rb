module ApplicationHelper
  def age(birthdate)
    (( Time.zone.now - birthdate.to_time) / 1.year.seconds).floor
  end
end
