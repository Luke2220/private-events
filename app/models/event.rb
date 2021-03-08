class Event < ApplicationRecord
    validates :event_name, presence: true
    belongs_to :host, class_name: 'User', foreign_key: 'host_id', optional: true
    has_many :event_attendences, foreign_key: 'event_id'
    has_many :guests, through: :event_attendences, source: 'guest'
end

