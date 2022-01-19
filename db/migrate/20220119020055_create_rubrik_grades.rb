class CreateRubrikGrades < ActiveRecord::Migration[7.0]
  def change
    create_table :rubrik_grades do |t|
      t.references :rubric, null: false, foreign_key: true
      t.references :gradeable, null: false, polymorphic: true
      t.integer :total_points, default: 0
      t.text :notes

      t.timestamps
    end
  end
end
