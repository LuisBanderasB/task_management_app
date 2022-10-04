class PlansController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @plans = Plan.all
  end
end