class OpenShift < ActiveRecord::Base
	has_one :set_shift
	has_one :closed_shift
	has_many :notifications
end
