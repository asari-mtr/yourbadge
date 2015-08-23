class AddDescriptionToCondition < ActiveRecord::Migration
  def change
    add_column :conditions, :description, :string
    add_column :conditions, :gold_description, :string
    add_column :conditions, :silver_description, :string
    add_column :conditions, :bronze_description, :string
    add_column :conditions, :image_name, :string
  end
end
