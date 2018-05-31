json.extract! session, :id, :place, :wallpaper, :custom_style, :event_date, :created_at, :updated_at
json.url session_url(session, format: :json)
