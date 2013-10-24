class Milestone < ActiveRecord::Base
  attr_accessible :creation_date, :description, :due_date, :id, :name
end
