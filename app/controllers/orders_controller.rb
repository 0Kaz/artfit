class OrdersController < ApplicationController
  def update
    @order = Order.where(user_id: current_user.id).where(status: "ongoing").first
    @order.update(status: "paid")
    redirect_to checkout_path
  end

  private

end
