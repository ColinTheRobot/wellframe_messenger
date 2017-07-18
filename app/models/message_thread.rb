class MessageThread < ApplicationRecord
 has_many :messages
 belongs_to :users
end
