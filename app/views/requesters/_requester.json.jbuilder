json.extract! requester, :id, :name, :created_at, :updated_at
json.url requester_url(requester, format: :json)
