class HomeController < ApplicationController
  def index
    @services = Service.all
    @order = Order.new
  end
end
