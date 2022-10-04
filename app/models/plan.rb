# frozen_string_literal: true

class Plan < ApplicationRecord
  monetize :price_cents
end
