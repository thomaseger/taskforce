class Ticket < ActiveRecord::Base
  belongs_to :user
  belongs_to :status
  belongs_to :milestone
  belongs_to :component
  belongs_to :priority
  belongs_to :category
  
  attr_accessible :conclusion, :creation_date, :description, :feature_request, :id, :reproduction, :test_suggestion
end
