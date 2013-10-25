class Role < ActiveRecord::Base
	include ActiveModel::ForbiddenAttributesProtection
  has_many :users
  attr_accessible :description, :id, :name
end
