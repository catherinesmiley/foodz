class Recipe < ApplicationRecord
    has_many :recipe_ingredients, dependent: :destroy
    has_many :ingredients, through: :recipe_ingredients
    has_many :recipe_steps, dependent: :destroy

    validates :title, presence: true
end
