class PhoneNumber < ApplicationRecord
    validates :number,:person_id, presence:true
end
