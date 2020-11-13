class Cocktail < ApplicationRecord
  has_many_attached :photos
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  # dependent: :destroy
  validates :name, uniqueness: true, presence: true

  # validates :address, presence: true
  # validates :phone_number, presence: true
  # validates :category, presence: true, inclusion: ["Mojito", "Bloody Mary", "Sex on the Beach", "Margarita", "Pina Colada"]
end
