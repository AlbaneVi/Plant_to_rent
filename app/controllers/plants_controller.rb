class PlantsController < ApplicationController
  before_action :set_plants, only: %i[show edit destroy]

  def index
    @plants = Plant.all
  end

  def show
  end

  def new
    @plant = Plant.new
  end

  def edit
  end

  def create
    @plant = Plant.create(plants_params)
    if @plant.save
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
    plant_category = %i[name family description water sun ext_int
                        size_cm price_per_day flowers user_id booking_id]
    params.require(:plants).permit(plant_category)
  end
end
