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
      redirect_to(new_order_note_path(@order))
    else
      render("extra")
    end
  end

  private
  def extra_params
    params.require(:extra).permit(:rus_title)
  end

end
