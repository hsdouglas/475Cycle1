class ClosedShift < ActiveRecord::Base
	belongs_to :open_shift
	has_many :notifications
end
