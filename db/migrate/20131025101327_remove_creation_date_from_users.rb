class RemoveCreationDateFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :creation_date
  end

  def down
    add_column :users, :creation_date, :time
  end
end
