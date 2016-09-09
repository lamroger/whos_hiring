class Technology < ApplicationRecord
  has_and_belongs_to_many :positions

  validates :name, presence: true
end
