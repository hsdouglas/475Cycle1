class SetShift < ActiveRecord::Base
	# Relationships
	belongs_to :user
	has_many :open_shifts
	has_many :notifications

	def swap(setShiftA, setShiftB)
		setShiftA.assignee_id = setShiftB.assignee_id
		setShiftB.assignee_id = setShiftA.assignee_id
		setShiftA.save!
		setShiftB.save!
	end
end
