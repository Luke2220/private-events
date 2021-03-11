class EventAttendence < ApplicationRecord
    belongs_to :guest, class_name: 'User'
    belongs_to :event, class_name: 'Event'

scope :invited, -> (user_id,current_event_id){where('guest_id = ? AND event_id = ?', user_id, current_event_id)}

end
