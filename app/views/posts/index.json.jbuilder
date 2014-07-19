json.array!(@posts) do |post|
  json.extract! post, :id, :summary, :source
  json.url post_url(post, format: :json)
end
