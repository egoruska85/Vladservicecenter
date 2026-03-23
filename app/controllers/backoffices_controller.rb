class BackofficesController < ApplicationController
  before_action :authenticate_user!
  def index
    @orders = Order.all
    if current_user.admin == nil
      redirect_to root_path
    end
  end
end
