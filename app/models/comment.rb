class Comment < ActiveRecord::Base
  attr_accessible :creation_date, :id, :text, :ticket, :user
end
