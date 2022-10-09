class UsersController < ApplicationController
  before_action :set_user, only: [:destroy]
  def index
    @workspace = current_user.workspaces.first
    @users = @workspace.users
  end

  def destroy
    if @user.destroy
      flash[:notice] = 'User deleted successfully.'
      redirect_to users_path
    else
      flash[:danger] = 'Something went wrong'
      redirect_to users_path
    end
  end

  def invite
    email = params[:users][:email]
    if user = User.invite!({:email => email}, current_user)
      current_workspace.users << user
      flash[:notice] = 'User invited successfully.'
      redirect_to users_path
    else
      flash[:danger] = 'Something went wrong.'
      redirect_to users_path
    end
  end

  private
  def set_user
    @user = User.find(params[:id])
  end
end