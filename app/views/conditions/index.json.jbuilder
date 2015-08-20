json.array!(@conditions) do |condition|
  json.extract! condition, :id, :name, :gold, :silver, :bronze
  json.url condition_url(condition, format: :json)
end
