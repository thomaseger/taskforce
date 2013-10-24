class WelcomeController < ApplicationController
  def index
  	@priorities = Priority.all
  end
end
