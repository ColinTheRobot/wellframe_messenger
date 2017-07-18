class Message < ApplicationRecord
  belongs_to :message_thread
  # TODO Spec doesn't ask for message to belong to a user, but it probably should
end
