class UsersController < ApplicationController
  before_action :set_users, only: [:show, :edit, :destroy]

  def show
    # set_users
  end

  def edit
    # set_users
  end

  def destroy
    @user.destroy
    redirect_to plants_path(@plant)
  end

  private

  def set_users
    @user = User.find(params[:id])
  end
end
