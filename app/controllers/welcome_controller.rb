class WelcomeController < ApplicationController
  def index
  	@priorities = Priority.all
  	@roles = Role.all
  end
end
