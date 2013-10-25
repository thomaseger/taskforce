class RemoveCreationDateFromMilestones < ActiveRecord::Migration
  def up
    remove_column :milestones, :creation_date
  end

  def down
    add_column :milestones, :creation_date, :time
  end
end
