class Position < ApplicationRecord
  belongs_to :company

  enum career: %i[developer business_intelligence information_technology design
                  product technology other]
  enum contract: %i[clt pj match]

  validates :name, :career, :contract, :city, :state, :summary, :description, presence: true
end
