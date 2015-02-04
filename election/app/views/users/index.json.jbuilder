json.array!(@users) do |user|
  json.extract! user, :id, :login, :password, :crypted_password
  json.url user_url(user, format: :json)
end
