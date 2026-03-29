class FrontofficesController < ApplicationController
  before_action :authenticate_user!

  def index
    @orders = Order.where(user_id: current_user.id)
  end

end
