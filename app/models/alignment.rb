class Alignment < ApplicationRecord
  belongs_to :x_alignment
  belongs_to :y_alignment
  has_many :gods
  has_many :followers
end
