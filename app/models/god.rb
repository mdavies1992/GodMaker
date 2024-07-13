class God < ApplicationRecord
  belongs_to :alignment
  belongs_to :domain
  belongs_to :user
  has_many :artifacts, dependent: :destroy
  has_many :followers, dependent: :destroy
  has_one_attached :photo

  DOMAINS = Domain.all
  ALIGNMENTS = Alignment.all

  validates :name, presence: true
  validates :alignment, inclusion: { in: ALIGNMENTS }, allow_blank: true
  validates :domain, inclusion: { in: DOMAINS }, allow_blank: true
end
