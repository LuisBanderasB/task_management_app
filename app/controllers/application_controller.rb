# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def current_workspace
    @workspace = current_user.workspaces.first
  end 
end
