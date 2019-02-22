class BookingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_booking, only: [:show, :new, :destroy]

  def index
    @bookings = current_user.bookings
  end

  def show
  end

  def new
    @plant = Plant.find(params[:plant_id])
    @booking = Booking.new
  end

  def create
    @plant = Plant.find(params[:plant_id])
    @booking = Booking.new(booking_params)
    @booking.plant = @plant
    @booking.save
    @booking.user = current_user
    if @booking.save
      redirect_to plants_path
    else
      redirect_to plants_path(@plant)
    end
  end

  def destroy
    @booking.destroy
    redirect_to
  end

  private

  def booking_params
    params.require(:booking).permit(:time, :price, :user_id, :plant_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
