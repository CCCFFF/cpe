json.array!(@users) do |user|
  json.extract! user, :f_name, :l_name, :email, :lic_state, :lic_number, :password_digest, :lic_initial_date
  json.url user_url(user, format: :json)
end
