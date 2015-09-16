class SetShift < ActiveRecord::Base
	# Relationships
	belongs_to :user
	has_many :open_shifts
	has_many :notifications

	# IF we wanted to directly modify set_shifts

	# def substitute(setShiftA, setShiftB)
	# 	# User A will be covered by User B 
	# 	setShiftA.assignee_id = setShiftB.assignee_id
	# 	setShiftA.save!
	# 	setShiftB.save!
	# end

	# def swap(setShiftA, setShiftB)
	# 	tempA = setShiftA.assignee_id
	# 	tempB = setShiftB.assignee_id
	# 	setShiftA.assignee_id = tempB
	# 	setShiftB.assignee_id = tempA
	# 	setShiftA.save!
	# 	setShiftB.save!
	# end

	# Create Closed Shift data objects to keep the old shift history
	def create_swapped_closed_shifts(shiftA, shiftB)
		closedShiftA = ClosedShift.new(open_shift_id: shiftA.id, new_assignee_id: shiftB.assignee_id, claimed: true)
		closedShiftB = ClosedShift.new(open_shift_id: shiftB.id, new_assignee_id: shiftA.assignee_id, claimed: true)
		closedShiftA.save!
		closedShiftB.save!
	end

	def create_substitute_closed_shift(shiftA, shiftB)
		subShift = ClosedShift.new(open_shift_id: shiftA.id, new_assignee_id: shiftB.assignee_id, claimed: true)
		subShift.save!
	end
end
