class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.references :user, index: true
      t.references :condition, index: true
      t.integer :number
      t.string :memo

      t.timestamps null: false
    end
  end
end
