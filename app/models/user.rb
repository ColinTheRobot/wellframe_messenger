class User < ApplicationRecord
  has_many :message_threads
  has_many :care_managers, through: :patients, source: :user

  has_many :messages, through: :message_threads
  
  has_many :care_managers, through: :message_threads
  has_many :patients, foreign_key: :care_manager_id, class_name: 'MessageThread'
end
