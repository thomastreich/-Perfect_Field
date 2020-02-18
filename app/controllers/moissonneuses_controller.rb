class MoissonneusesController < ApplicationController
  def index
    @moissonneuses = Moissonneuse.all
  end

  def new
    @moissonneuse = Moissonneuse.new
  end

  def create
    @moissonneuse = Moissonneuse.new(moissonneuse_params)
    if @moissonneuse.save
      redirect_to moissonneuses_path
    else
      render :new
    end
  end

  private

  def moissonneuse_params
    params.require(@moissonneuse).permit(:name, :power, :description, :brand, :model, :address, :photo)
  end
end
