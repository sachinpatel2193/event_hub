class Event < ActiveRecord::Base
    has_and_belongs_to_many :users
    has_many :users
    has_many :event_users
   
    validates :name, presence: true
    
    validates :address, presence: true
    
    validates :city, presence: true
    
    validates :province, presence: true
    
    zip_canada = /\A[a-zA-Z]{1}\d{1}[a-zA-Z]{1}[ -]?\d{1}[a-zA-Z]{1}\d{1}\z/
    validates :postal_code, :presence => true, :format => { :with => zip_canada }
      
    validates :country, presence: true
end
