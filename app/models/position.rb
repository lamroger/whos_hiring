class Position < ApplicationRecord
  belongs_to :company
  has_and_belongs_to_many :technologies

  validates :company_id, presence: true
end
