# frozen_string_literal: true

module ChargesHelper
  def get_key
    @key = ENV['STRIPE_PUBISHABLE_KEY']
  end
end
