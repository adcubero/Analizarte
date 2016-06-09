json.array!(@sentences) do |sentence|
  json.extract! sentence, :id, :paragrah_id, :sentence
end
