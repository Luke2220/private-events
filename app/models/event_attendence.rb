class EventAttendence < ApplicationRecord
    belongs_to :guest, class_name: 'User'
    belongs_to :event, class_name: 'Event'

end
