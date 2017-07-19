class MessageThread < ApplicationRecord
 has_many :messages
 belongs_to :user
 belongs_to :care_manager, class_name: 'User'
end
