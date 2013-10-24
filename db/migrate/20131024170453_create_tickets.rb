class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.primary_key :id
      t.time :creation_date
      t.references :user
      t.references :status
      t.references :milestone
      t.references :component
      t.references :priority
      t.references :category
      t.boolean :feature_request
      t.text :description
      t.text :reproduction
      t.text :test_suggestion
      t.text :conclusion

      t.timestamps
    end
  end
end
