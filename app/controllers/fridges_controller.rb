class FridgesController < ApplicationController
  def index
    @example_data = "HELLOO WORLDD"
    @fridges = Fridge.all
  end
  def new
    @fridge = Fridge.new
  end
  def create
    @fridge = Fridge.new(fridge_params)
    if @fridge.save
      redirect_to fridges_url
    else
      redirect_to fridges_new_url
    end
  end
  private
  def fridge_params
    params.require(:fridge).permit(:location, :brand, :size)
  end

end
