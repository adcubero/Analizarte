json.array!(@paragrahs) do |paragrah|
  json.extract! paragrah, :id, :exam_id
end
