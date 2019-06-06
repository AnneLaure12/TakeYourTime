class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user)
  end

  def new
    @teacher = Teacher.find(params[:teacher_id])
    @booking = Booking.new
  end

  def create
    @teacher = Teacher.find(params[:teacher_id])
    @booking = Booking.new(set_booking_params)
    @booking.teacher = @teacher
    @booking.date = Time.now
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path(@teacher)
    else render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(set_booking_params)
    redirect_to bookings_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def set_booking_params
    params.require(:booking).permit(:title, :teacher_id, :date)
  end
end
