class OrdersController < ApplicationController
  def new

  end

  def create
    @order = Order.new(order_params)
    if user_signed_in?
      @order.name = current_user.username
      @order.phone = current_user.phone
    end
    if @order.save
      redirect_to root_path, notice: "Заявка принята, с вами свяжутся ближайшее время"
    end
  end

  private

  def order_params
    params.require(:order).permit(:service_id, :name, :desc, :phone, images: [])
  end
end
