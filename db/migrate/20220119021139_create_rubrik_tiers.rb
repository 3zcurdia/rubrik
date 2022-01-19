class CreateRubrikTiers < ActiveRecord::Migration[7.0]
  def change
    create_table :rubrik_tiers do |t|
      t.references :grade, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.integer :points
      t.text :notes

      t.timestamps
    end
  end
end
