class EventAttendence < ApplicationRecord
    belongs_to :guest, class_name: 'User'
    belongs_to :event, class_name: 'Event'

scope :invited, -> (current_user_id){where('guest_id = ?', current_user_id)}

end
