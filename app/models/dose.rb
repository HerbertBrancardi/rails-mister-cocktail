class Dose < ApplicationRecord
  belongs_to :cocktail#, optional: true
  belongs_to :ingredient
  validates :ingredient, uniqueness: { scope: :cocktail }
  validates :description, presence: true
end
