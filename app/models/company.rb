class Company < ApplicationRecord
  extend FriendlyId
  friendly_id :name

  validates :name, presence: true
  validates :website, presence: true
  validates :description, presence: true

  has_many :positions
end
