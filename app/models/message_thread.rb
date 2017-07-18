class MessageThread < ApplicationRecord
 has_many :messages
 belongs_to :patient
 belongs_to :care_managers
end
