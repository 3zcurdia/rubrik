class CreateRubrikRubrics < ActiveRecord::Migration[7.0]
  def change
    create_table :rubrik_rubrics do |t|
      t.string :name

      t.timestamps
    end
  end
end
