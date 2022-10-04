class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!
  def index
  end
  def pricing
    @plans = Plan.all
  end
end
