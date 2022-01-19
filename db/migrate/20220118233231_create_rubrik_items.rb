class CreateRubrikItems < ActiveRecord::Migration[7.0]
  def change
    create_table :rubrik_items do |t|
      t.references :category, null: false, foreign_key: true
      t.string :name
      t.text :summary
      t.integer :points, default: 0

      t.timestamps
    end
  end
end
