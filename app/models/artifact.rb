class Artifact < ApplicationRecord
  belongs_to :god
  belongs_to :type
end
