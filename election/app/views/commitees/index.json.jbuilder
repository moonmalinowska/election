json.array!(@commitees) do |commitee|
  json.extract! commitee, :id, :name
  json.url commitee_url(commitee, format: :json)
end
