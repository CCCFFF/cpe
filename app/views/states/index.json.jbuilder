json.array!(@states) do |state|
  json.extract! state, :name, :lic_period, :credit_hours, :credit_category
  json.url state_url(state, format: :json)
end
