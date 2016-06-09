json.array!(@multiple_choices) do |multiple_choice|
  json.extract! multiple_choice, :id, :question, :exam_id
end
