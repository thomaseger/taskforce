class UsersController < ApplicationController
  def new     
    @user = User.new
  end

  def create
    role_id = params[:user][:role]
    @role = Role.find(role_id)
    @user = @role.users.create(params[:user].permit(:name, :email))

    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(params[:user].permit(:name, :email, :role))
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

private
  def user_params
    params.require(:user).permit(:name, :email, :role)
  end
end
