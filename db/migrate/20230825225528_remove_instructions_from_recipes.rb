class RemoveInstructionsFromRecipes < ActiveRecord::Migration[6.1]
  def change
    remove_column :recipes, :instructions, :text
  end
end
