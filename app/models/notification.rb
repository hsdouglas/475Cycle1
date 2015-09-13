class Notification < ActiveRecord::Base
	belongs_to :set_shift
	belongs_to :open_shift
	belongs_to :closed_shift
end
