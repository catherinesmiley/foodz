class RecipeStep < ApplicationRecord
  belongs_to :recipe

  # display error messages when trying to save invalid data
  validates :instruction, presence: true
  validates :step_number, uniqueness: { scope: :recipe_id, message: "should be unique per recipe" }
end
