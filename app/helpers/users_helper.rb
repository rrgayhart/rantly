module UsersHelper

  def full_name(person)
    [person.first_name, person.last_name].join(" ")
  end

  def check_follow(user)
    @follow = Follow.find_by(follower_id: current_user.id, followee_id: user.id)
    @follow == nil ? false : true
  end

  def mentioned_rants(user)
    @mentioned = Rant.where('rant LIKE ?', '%@' + user.username + '%')
  end
end
