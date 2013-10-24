class Priority < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection

  attr_accessible :description, :id, :name

  validates :name, presence: true, :uniqueness => true
end
