# frozen_string_literal: true

class ChargesController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    byebug
  end
end
