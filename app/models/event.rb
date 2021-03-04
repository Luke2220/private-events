class Event < ApplicationRecord
    belongs_to :host, class_name: 'User', optional: true
    belongs_to :guest, class_name: 'User', optional: true
end
