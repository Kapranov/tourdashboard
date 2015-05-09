json.array!(@microposts) do |micropost|
  json.extract! micropost, :id, :author, :email, :review
  json.url micropost_url(micropost, format: :json)
end
