class AddCategoriesCountToRubric < ActiveRecord::Migration[7.0]
  def change
    add_column :rubrik_rubrics, :categories_count, :integer, default: 0
  end
end
