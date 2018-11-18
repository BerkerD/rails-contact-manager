class PhoneNumber < ApplicationRecord
    validates :number, presence:true
end
