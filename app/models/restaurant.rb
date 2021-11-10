class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  categories = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: categories }, presence: true
end
