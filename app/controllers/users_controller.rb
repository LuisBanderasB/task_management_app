class UsersController < ApplicationController
  def index
    @workspace = current_user.workspaces.first
    @users = @workspace.users
  end
end