json.extract! widget, :id, :title, :description, :price, :user_id, :image, :created_at, :updated_at
json.url widget_url(widget, format: :json)
