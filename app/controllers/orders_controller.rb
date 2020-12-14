class OrdersController < ApplicationController
  def index
    @item = Item.find(params[:item_id])
    @order_address = OrderAddress.new
  end

  def create
    # order = Order.create(order_params)
    # Address.create(address_params(order))
    @order_address = OrderAddress.new(order_address_params)
    if @order_address.valid?
      @order_address.save
      redirect_to root_path
    else
      @item = Item.find(params[:item_id])
      render action: :index
    end
  end

  private

  def order_address_params
    params.require(:order_address).permit(:postal_code, :prefecture_id, :city, :address, :building, :phone_number, :item_id).merge(user_id: current_user.id,item_id: params[:item_id])
  end
  # def order_params
  #   params.permit(:item_id).merge(user_id: current_user.id)
  # end

  # def address_params(order)
  #   params.permit(:postal_code, :prefecture_id, :city, :address, :building, :phone_number).merge(order_id:order.id)
  # end
end
