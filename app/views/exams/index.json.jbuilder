json.array!(@exams) do |exam|
  json.extract! exam, :id, :age
end
