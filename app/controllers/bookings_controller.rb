class BookingsController < ApplicationController
  def index

    @bookings = Booking.where(user: current_user)
  end

  def new
    @teacher = Teacher.find(params[:class_id])
    @booking = Booking.new
  end

  def create
    @teacher = Teacher.find(params[:class_id])
    @booking = Booking.new(set_booking_params)
    @booking.teacher = @teacher
    @booking.user = current_user
      raise
    if @booking.save
      redirect_to teachers_path
    else render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_booking_params
    params.require(:booking).permit(:title, :teacher_id)
  end
end
