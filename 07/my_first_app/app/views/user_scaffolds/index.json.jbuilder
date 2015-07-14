json.array!(@user_scaffolds) do |user_scaffold|
  json.extract! user_scaffold, :id, :first_name, :last_name, :age, :email
  json.url user_scaffold_url(user_scaffold, format: :json)
end
