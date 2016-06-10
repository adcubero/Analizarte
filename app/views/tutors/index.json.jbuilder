json.array!(@tutors) do |tutor|
  json.extract! tutor, :id, :email, :password, :name, :age
  json.url tutor_url(tutor, format: :json)
end
