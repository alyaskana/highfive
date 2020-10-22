class SubscribersController < ApplicationController
  def create
    @subscriber = Subscriber.create(subscriber_params)
    flash[:success] = true
    request.env["HTTP_REFERER"] += '#subscribe'
    redirect_back(fallback_location: home_path)
  end

  private

  def subscriber_params
    params.require(:subscriber).permit(:email)
  end
end
