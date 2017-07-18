class CareManager < ApplicationRecord
  # TODO single table inheritance for threads might be the better way to /
  # architect this
  #
  has_many :messge_threads
end
