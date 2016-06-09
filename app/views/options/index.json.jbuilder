json.array!(@options) do |option|
  json.extract! option, :id, :sentence_id, :option, :correct
end
