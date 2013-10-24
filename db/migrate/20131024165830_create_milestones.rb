class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.primary_key :id
      t.time :creation_date
      t.time :due_date
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
