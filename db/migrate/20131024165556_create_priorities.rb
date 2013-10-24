class CreatePriorities < ActiveRecord::Migration
  def change
    create_table :priorities do |t|
      t.primary_key :id
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
