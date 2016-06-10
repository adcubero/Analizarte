json.array!(@kids) do |kid|
  json.extract! kid, :id, :email, :password, :name, :age, :tutor_id
  json.url kid_url(kid, format: :json)
end
