class God < ApplicationRecord
  belongs_to :alignment
  belongs_to :domain

  validates :name, presence: true
end
