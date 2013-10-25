class RemoveCreationDateFromTickets < ActiveRecord::Migration
  def up
    remove_column :tickets, :creation_date
  end

  def down
    add_column :tickets, :creation_date, :time
  end
end
