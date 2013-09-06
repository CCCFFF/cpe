json.array!(@certificates) do |certificate|
  json.extract! certificate, :credits, :topic, :course_title, :date, :credit_category
  json.url certificate_url(certificate, format: :json)
end
