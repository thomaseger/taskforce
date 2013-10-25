class WelcomeController < ApplicationController
  def index
  	@priorities = Priority.all
  	@roles = Role.all
  	@users = User.all
  end
end
