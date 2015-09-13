json.array!(@closed_shifts) do |closed_shift|
  json.extract! closed_shift, :id, :open_shift_id, :new_assignee_id, :claimed
  json.url closed_shift_url(closed_shift, format: :json)
end
