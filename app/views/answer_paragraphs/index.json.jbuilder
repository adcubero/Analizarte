json.array!(@answer_paragraphs) do |answer_paragraph|
  json.extract! answer_paragraph, :id, :option_id, :evaluation_id, :sentence_id
  json.url answer_paragraph_url(answer_paragraph, format: :json)
end
