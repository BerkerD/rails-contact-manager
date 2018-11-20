class EmailAddress < ApplicationRecord
    belongs_to :person,optional: true
end
