class Cocktail < ApplicationRecord
    has_many :doses, dependent: :destroy
    has_many :ingredients, through: :doses
    validates :name, uniqueness: true
    validates :name, presence: true
end


  # belongs_to :restaurant

  # validates :content, presence: true
