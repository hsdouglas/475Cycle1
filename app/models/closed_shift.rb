class ClosedShift < ActiveRecord::Base
	belongs_to :open_shift
	has_many :notifications

	def create_swapped_closed_shifts(shiftA, shiftB)
		CloseShift.new(open_shift_id: shiftA.id, new_assignee_id: shiftB.assignee_id, claimed: true)
		CloseShift.new(open_shift_id: shiftB.id, new_assignee_id: shiftA.assignee_id, claimed: true)
	end
end
