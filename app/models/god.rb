class God < ApplicationRecord
  belongs_to :alignment
  belongs_to :domain
  DOMAINS = Domain.all

  validates :name, presence: true
  validates :domain, inclusion: { in: DOMAINS }, allow_blank: true
end
