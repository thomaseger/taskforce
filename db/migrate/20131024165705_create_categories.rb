class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.primary_key :id
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
