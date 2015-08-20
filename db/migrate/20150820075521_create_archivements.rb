class CreateArchivements < ActiveRecord::Migration
  def change
    create_table :archivements do |t|
      t.integer :number
      t.string :memo

      t.timestamps null: false
    end
  end
end
