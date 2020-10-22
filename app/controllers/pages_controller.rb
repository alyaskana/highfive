class PagesController < ApplicationController
  def index
    @subscriber = Subscriber.new
  end

  def about
    @subscriber = Subscriber.new
  end
end
