module CoachesHelper
  def gender_select(coach, current_gender)
    coach.gender == current_gender ? 'btn-primary' : 'btn-secondary'
  end

  def avatar_url(coach)
    avatar = coach.avatar
    avatar.attached? ? avatar : 'img.jpg'
  end
end
