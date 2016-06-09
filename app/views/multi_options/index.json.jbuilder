json.array!(@multi_options) do |multi_option|
  json.extract! multi_option, :id, :option, :multiple_choice_id
end
