json.array!(@comments) do |comment|
  json.extract! comment, :id, :full_name, :email
  json.url comment_url(comment, format: :json)
end
