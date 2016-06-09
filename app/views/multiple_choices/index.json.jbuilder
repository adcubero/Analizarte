json.array!(@multiple_choices) do |multiple_choice|
  json.extract! multiple_choice, :id, :question, :exam_id
  json.url multiple_choice_url(multiple_choice, format: :json)
end
