json.array!(@periods) do |period|
  json.extract! period, :user_id, :state_id, :period_start, :period_end
  json.url period_url(period, format: :json)
end
