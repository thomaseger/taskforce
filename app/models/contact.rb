class Contact < ActiveRecord::Base
  attr_accessible :assignee, :id, :ticket, :user
end
