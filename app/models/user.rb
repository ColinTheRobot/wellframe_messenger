class User < ApplicationRecord
  has_many :message_threads
end
