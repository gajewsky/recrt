class Customer < ActiveRecord::Base
has_many :rentals
validates :name, uniqueness: true, presence: true
validates :addres,:phone, presence: true

end

