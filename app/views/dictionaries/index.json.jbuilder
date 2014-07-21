json.array!(@dictionaries) do |dictionary|
  json.extract! dictionary, :id, :word, :meaning
  json.url dictionary_url(dictionary, format: :json)
end
