class User < ActiveRecord::Base
  attr_accessible :creation_date, :email, :id, :name, :role
end
