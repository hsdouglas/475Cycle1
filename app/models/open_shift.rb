class OpenShift < ActiveRecord::Base
	# Callbacks
	# after_create :create_notification

	# Relationships
	has_one :set_shift
	has_one :closed_shift
	has_many :notifications

	# # Methods
	# def create_notification
	# 	Notification.new(sender_id: , recipient_id: BLAH, shift_id: self.shift_id, message: "")
	# end
end
