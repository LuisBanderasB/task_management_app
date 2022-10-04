Rails.configuration.stripe = {
  :publishable_key => ENV['STRIPE_PUBISHABLE_KEY'],
  :secret_key      => ENV['STRIPE_SECRET_KEY']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
