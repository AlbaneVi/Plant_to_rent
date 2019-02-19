class BookingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_booking, only: [:show, :destroy]

  def index
    @bookings = Booking.all
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
    if @booking.save
      redirect_to plant_path
    else
      render :new
    end
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
