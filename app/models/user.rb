class User < ApplicationRecord
    validates :username, presence: true
    has_many :hosted_events, foreign_key: 'host_id', class_name: 'Event'
    has_many :event_attendences, foreign_key: 'guest_id'
    has_many :events, through: :event_attendences, source: 'event'
end
