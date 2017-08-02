json.extract! pockemon, :id, :name, :desciption, :user_id, :created_at, :updated_at
json.url pockemon_url(pockemon, format: :json)
