# app/controllers/subscriptions_controller.rb
class SubscriptionsController < ApplicationController
  def create
    @subscription = Subscription.new(subscription_params)
    if @subscription.save
      redirect_to root_path, notice: 'You are subscribed!'
    else
      redirect_to root_path, alert: 'Invalid Email!'
    end
  end

  private
  def subscription_params
    params.require(:subscription).permit(:email)
  end
end
