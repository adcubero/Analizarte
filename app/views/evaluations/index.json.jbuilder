json.array!(@evaluations) do |evaluation|
  json.extract! evaluation, :id, :exam_id
  json.url evaluation_url(evaluation, format: :json)
end
