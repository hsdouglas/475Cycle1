json.array!(@set_shifts) do |set_shift|
  json.extract! set_shift, :id, :assignee_id, :assigner_id, :start, :end, :is_PTO?
  json.url set_shift_url(set_shift, format: :json)
end
