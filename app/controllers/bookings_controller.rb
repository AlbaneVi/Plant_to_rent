class BookingsController < ApplicationController
  before_action :set_booking, only[:show, :destroy]
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.new
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy
    @booking.destroy
    redirect_to
  end

  private

  def booking_params
    params.require(:booking).permit(:time, :name, :price, :user_id, :plant_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
