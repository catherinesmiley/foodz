class AddIndexToRecipeSteps < ActiveRecord::Migration[6.1]
  def change
    add_index :recipe_steps, [:recipe_id, :step_number], unique: true
  end
end
