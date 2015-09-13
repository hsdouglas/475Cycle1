json.array!(@notifications) do |notification|
  json.extract! notification, :id, :sender_id, :recipient_id, :shift_id, :shift_type, :message
  json.url notification_url(notification, format: :json)
end
