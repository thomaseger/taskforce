class PrioritiesController < ApplicationController
  def new     
    @priority = Priority.new
  end

  def create
    @priority = Priority.new(priority_params)

    if @priority.save
      redirect_to @priority
    else
      render 'new'
    end
  end

  def index
    @priorities = Priority.all
  end

  def show
    @priority = Priority.find(params[:id])
  end

  def edit
    @priority = Priority.find(params[:id])
  end

  def update
    @priority = Priority.find(params[:id])

    if @priority.update_attributes(params[:priority].permit(:name, :description))
      redirect_to @priority
    else
      render 'edit'
    end
  end

  def destroy
    @priority = Priority.find(params[:id])
    @priority.destroy
    redirect_to priorities_path
  end

private
  def priority_params
    params.require(:priority).permit(:name, :description)
  end
end
