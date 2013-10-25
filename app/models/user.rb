class User < ActiveRecord::Base
  belongs_to :role
  attr_accessible :email, :id, :name
end
