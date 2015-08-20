class CreateConditions < ActiveRecord::Migration
  def change
    create_table :conditions do |t|
      t.string :name
      t.integer :gold
      t.integer :silver
      t.integer :bronze

      t.timestamps null: false
    end
  end
end
