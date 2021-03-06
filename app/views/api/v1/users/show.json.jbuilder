user = @user
json.user do
  json.id user.id
  json.user_name user.user_name
  json.introduction user.introduction
  json.gender user.gender
  json.lat user.latitude
  json.lng user.longitude
  json.city user.city
  json.country user.country
  json.email user.email
  json.skills user.skill_list.sort
  json.created_at user.created_at
  json.friends user.friends do |friend|
    json.id friend.id
    json.name friend.user_name
    json.email friend.email
    json.url url_for(friend)
  end
  if current_user
    json.pending_friendships user.pending_invited_by do |pending|
      json.id pending.id
      json.name pending.user_name
      json.email pending.email
      json.url url_for(pending)
    end

    json.pending_invited_friendships user.pending_invited do |pending|
      json.id pending.id
      json.name pending.user_name
      json.email pending.email
      json.url url_for(pending)
    end

    json.blocked_by_current_user current_user.blocked? user

  end
end
