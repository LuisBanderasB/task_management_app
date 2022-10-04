# frozen_string_literal: true

# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  tls: true,
  address: 'smtp.gmail.com',
  port: 587,
  domain: 'gmail.com',
  authentication: :login,
  user_name: 'tmanagementapp@gmail.com',
  password: 'fahder-fYdnyf-8fonwu'
}

Rails.application.initialize!
