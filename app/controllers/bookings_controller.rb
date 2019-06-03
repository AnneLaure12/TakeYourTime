class BookingsController < ApplicationController

  def index
    @bookings = Booking.where(user: current_user)
  end

  def new
    @classe = Classe.find(params[:classe_id])
    @booking = Booking.new
  end

  def create
    @classes = Classe.all
    @classe = Classe.find(params[:classe_id])
    @booking = Booking.new(set_booking_params)
    @booking.classe = @classe
    @booking.user = current_user
    if @booking.save
      redirect_to @classes_path
    else render 'classes/index'
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_booking_params
    params.require(:booking).permit(:title)
  end
end
