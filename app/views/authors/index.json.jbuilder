json.array!(@authors) do |author|
  json.extract! author, :id, :name, :genres
  json.url author_url(author, format: :json)
end
