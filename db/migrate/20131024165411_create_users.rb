class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.primary_key :id
      t.time :creation_date
      t.string :name
      t.string :email
      t.references :role

      t.timestamps
    end
  end
end
