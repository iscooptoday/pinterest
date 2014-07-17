json.array!(@posts) do |post|
  json.extract! post, :id, :body, :source
  json.url post_url(post, format: :json)
end
