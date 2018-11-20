class EmailAddress < ApplicationRecord
    validates :address, presence:true
    belongs_to :person,optional: true
end
