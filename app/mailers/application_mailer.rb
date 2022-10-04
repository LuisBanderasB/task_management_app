# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'tmanagementapp@gmail.com'
  layout 'mailer'
end
