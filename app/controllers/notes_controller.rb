class NotesController < ApplicationController

  def new
    @order = Order.find(params[:order_id])
    @total = 0
    @order.line_items.each do |item|
      @total += item.product.price * item.quantity
    end
    @note = Note.new
    render('note')
  end

  def create
    @order = Order.find(params[:order_id])
    @note = Note.new(note_params)
    @order.note = @note

    if @note.save
      redirect_to(new_order_payment_path(@order))
    else
      render("note")
    end
  end

  private
  def note_params
    params.require(:note).permit(:email, :reason_sending, :note_from, :note_to, :note, :special_instruction)
  end

end
