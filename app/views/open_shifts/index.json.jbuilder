json.array!(@open_shifts) do |open_shift|
  json.extract! open_shift, :id, :set_shift_id, :original_assignee_id, :opened, :is_trade?, :is_request?, :is_cover?, :active
  json.url open_shift_url(open_shift, format: :json)
end
