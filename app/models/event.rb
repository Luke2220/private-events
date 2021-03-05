class Event < ApplicationRecord
    belongs_to :host, class_name: 'User', foreign_key: 'host_id', optional: true
    has_many :event_attendences, foreign_key: 'guest_id'
    has_many :guests, through: :event_attendences, source: 'guest'
end
