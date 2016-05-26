json.array!(@trains) do |train|
  json.extract! train, :id, :title
  json.url train_url(train, format: :json)
end
