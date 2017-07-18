class Patient < ApplicationRecord
  has_one :message_thread
end
