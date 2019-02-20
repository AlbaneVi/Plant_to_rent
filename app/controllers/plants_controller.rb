class PlantsController < ApplicationController
  before_action :set_plants, only: %i[show edit destroy]

  def index
    @plants = Plant.all
    @plant = Plant.new
  end

  def show
  end

  def new
    @plant = Plant.new
  end

  def edit
  end

  def update
    @plant.update(plants_params)
    redirect_to plant_path(@plant)
  end

  def create
    @plant = Plant.new(plants_params)
    @plant.user = current_user
    if @plant.save!
      redirect_to plant_path(@plant)
    else
      render :new
    end
  end

  def destroy
    @plant.destroy
    redirect_to plant_path
  end

  private

  def set_plants
    @plant = Plant.find(params[:id])
  end

  def plants_params
    params.require(:plant).permit(:name, :family, :description, :water, :sun, :ext_int, :size_cm, :price_per_day, :flowers, :photo, :booking_id)
  end
end
