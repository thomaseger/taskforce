class User < ActiveRecord::Base
	include ActiveModel::ForbiddenAttributesProtection
  
  belongs_to :role

  attr_accessible :email, :id, :name

  validates :name, presence: true
  validates :email, presence: true

end
