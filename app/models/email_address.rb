class EmailAddress < ApplicationRecord
    validates :address,:person_id, presence:true
    belongs_to :person,optional: true
end
