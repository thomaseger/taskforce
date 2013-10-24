class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.primary_key :id
      t.references :user
      t.references :ticket
      t.boolean :assignee

      t.timestamps
    end
  end
end
