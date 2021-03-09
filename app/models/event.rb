class Event < ApplicationRecord
    validates :event_name, presence: true
    belongs_to :host, class_name: 'User', foreign_key: 'host_id', optional: true
    has_many :event_attendences, foreign_key: 'event_id'
    has_many :guests, through: :event_attendences, source: 'guest'

    scope :past_events, -> {where(Date.parse(:event_date) < Date.today)}
    scope :future_events, -> {where(Date.parse(:event_date) > Date.today)}

    def is_event_past?
        if Date.parse(self.event_date) > Date.today
            return false
        else
            return true
        end
    end
end

