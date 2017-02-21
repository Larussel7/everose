class ExtrasController < ApplicationController

  def new
    @extra = Extra.new
    render('extra')
  end

  def create
    @order = Order.find(params[:order_id])
    @extra = Extra.new(extra_params)
    @order.extra = @extra

    if @extra.save
      redirect_to(store_index_path)
    else
      render("extra")
    end
  end

  private
  def extra_params
    params.require(:extra).permit(:rus_title)
  end

end
