class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :cocktail, uniqueness: { scope: :ingredient}
  # an ingredient only appears once in a cocktail recipe
  # Mojito
  # Rum - 60ml
  # Soda Water - 110ml
  # Crushed Ice
  # Mint - 7 leaves
  # Sugar
  validates :description, presence: true
end

