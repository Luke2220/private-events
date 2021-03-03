class User < ApplicationRecord
    has_many :hosted_events, foreign_key: 'host_id', class_name: 'Post'
    has_many :guest_events, foreign_key: 'guest_id', class_name: 'Post'
end
