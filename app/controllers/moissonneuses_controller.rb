class MoissonneusesController < ApplicationController
  def index
    @moissonneuses = Moissonneuse.all
  end

    def show
      @moissonneuse = Moissonneuse.find(params[:id])
    end

  def new
    @moissonneuse = Moissonneuse.new
  end

  def create
    @moissonneuse = Moissonneuse.new(moissonneuse_params)
    if @moissonneuse.save
      redirect_to moissonneuse_path(@moissonneuse)
    else
      render :new
    end
  end

  private

  def moissonneuse_params
    params.require(:moissonneuse).permit(:name, :power, :brand, :description, :model, :address, :photo)
  end
end
