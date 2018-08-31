class ProductsController < ApplicationController

  def create
    @product = Product.new(product_params)
    @design = Design.find(params[:design_id])
    @product.design = @design
    if @product.valid?
      @product.save
      @order = Order.where(user_id: current_user.id).where(status: "ongoing").first
      if @order.nil?
        @order = Order.create(user_id: current_user.id)
        @basket = Basket.new
        @basket.order = @order
        @basket.product = @product
        @basket.save
      else
        @basket = Basket.new
        @basket.order = @order
        @basket.product = @product
        @basket.save
      end
      redirect_to design_path(@design)
    else
      @message = @product.errors
      redirect_to design_path(@design)
    end
  end

  # def update
  #   # @product = Product.find(params[:id])
  #   # if @product.update(product_params)
  #   #   redirect_to baskets_path
  #   # else
  #   end
  # end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
  end

  private

  def product_params
    params.require(:product).permit(:size, :quantity, :unit_price)
  end

end
