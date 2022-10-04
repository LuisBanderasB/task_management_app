module WelcomeHelper
  def money_translate(plan)
    price = Money.new(plan.price_cents)
    humanized_money_with_symbol(price)
  end
end
