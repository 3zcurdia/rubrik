class CreateRubrikCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :rubrik_categories do |t|
      t.references :rubric, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
