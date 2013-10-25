class Contact < ActiveRecord::Base
  belongs_to :ticket
  belongs_to :user
  attr_accessible :assignee, :id
end
