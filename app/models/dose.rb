class Dose < ApplicationRecord
  belongs_to :cocktail,    dependent: :destroy
  belongs_to :ingredient
  #validates :
end
