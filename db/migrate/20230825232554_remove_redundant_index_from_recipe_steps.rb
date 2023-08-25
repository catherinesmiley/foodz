class RemoveRedundantIndexFromRecipeSteps < ActiveRecord::Migration[6.1]
  def change
    remove_index :recipe_steps, column: :recipe_id
  end
end
