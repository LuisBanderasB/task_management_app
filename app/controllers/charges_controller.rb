# frozen_string_literal: true

class ChargesController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    redirect_to new_user_registration_path
  end
end
