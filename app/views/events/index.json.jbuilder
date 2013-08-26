json.array!(@events) do |event|
  json.extract! event, :name, :summary, :start, :stop, :category, :place
  json.url event_url(event, format: :json)
end
