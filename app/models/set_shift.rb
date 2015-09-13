class SetShift < ActiveRecord::Base
	belongs_to :user
	has_many :open_shifts
	has_many :notifications
end
