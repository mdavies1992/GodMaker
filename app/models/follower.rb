class Follower < ApplicationRecord
  belongs_to :god
  belongs_to :alignment
end
