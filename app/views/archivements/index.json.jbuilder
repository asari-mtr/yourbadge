json.array!(@archivements) do |archivement|
  json.extract! archivement, :id, :number, :memo
  json.url archivement_url(archivement, format: :json)
end
