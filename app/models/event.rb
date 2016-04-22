class Event < ActiveRecord::Base
    belongs_to :users
    has_many :users
    has_many :users, through: :event_users
end
