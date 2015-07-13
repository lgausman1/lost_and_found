json.array!(@posts) do |post|
  json.extract! post, :id, :title, :status, :description, :location, :date, :user_id
  json.url post_url(post, format: :json)
end
