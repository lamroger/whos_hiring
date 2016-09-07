class Company < ApplicationRecord
  validates :name, presence: true
  validates :website, presence: true
  validates :description, presence: true
end
