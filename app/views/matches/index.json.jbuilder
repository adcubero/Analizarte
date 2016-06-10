json.array!(@matches) do |match|
  json.extract! match, :id, :exam, :belongs_to, :option1, :option2
  json.url match_url(match, format: :json)
end
