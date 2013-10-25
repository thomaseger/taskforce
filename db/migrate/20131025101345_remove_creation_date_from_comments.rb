class RemoveCreationDateFromComments < ActiveRecord::Migration
  def up
    remove_column :comments, :creation_date
  end

  def down
    add_column :comments, :creation_date, :time
  end
end
