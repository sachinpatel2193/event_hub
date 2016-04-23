class Event < ActiveRecord::Base
    belongs_to :user

    validates :name, presence: true
    
    validates :address, presence: true
    
    validates :city, presence: true
    
    validates :province, presence: true
    
    zip_canada = /\A[a-zA-Z]{1}\d{1}[a-zA-Z]{1}[ -]?\d{1}[a-zA-Z]{1}\d{1}\z/
    validates :postal_code, :presence => true, :format => { :with => zip_canada }
      
    validates :country, presence: true
    
end    