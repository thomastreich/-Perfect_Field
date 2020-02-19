class MoissonneusesController < ApplicationController
  before_action :set_moissonneuse, only: [:show, :edit, :update, :destroy]

  def index
    @moissonneuses = policy_scope(Moissonneuse).limit(12)
    if params[:search] && params[:search][:region].present?
      @moissonneuses = @moissonneuses.where(region: params[:search][:region])
    end
    if params[:search] && params[:search][:region].present?
      @moissonneuses = @moissonneuses.where(region: params[:search][:region])
    end
    @markers = @moissonneuses.geocoded.map do |moissonneuse|
      {
        lat: moissonneuse.latitude,
        lng: moissonneuse.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { moissonneuse: moissonneuse })
      }
    end
  end

  def show
    @moissonneuse = Moissonneuse.find(params[:id])
    authorize @moissonneuse
  end

  def new
    @moissonneuse = Moissonneuse.new
    authorize @moissonneuse
  end

  def create
    @moissonneuse = Moissonneuse.new(moissonneuse_params)
    @moissonneuse.user = current_user
<<<<<<< HEAD
=======

    authorize @moissonneuse

>>>>>>> 6bb11d7b7e82df35bbbd32ea594b8919ad68181b
    if @moissonneuse.save
      redirect_to moissonneuse_path(@moissonneuse)
    else
      render :new
    end
  end

  def edit
    authorize @moissonneuse
  end

  def update
    @moissonneuse.user = current_user
    authorize @moissonneuse
    @moissonneuse.update(moissonneuse_params)
    redirect_to moissonneuse_path(@moissonneuse)
  end

  def destroy
    @moissonneuse.destroy
    authorize @moissonneuse
    redirect_to root_path
  end

  private

  def set_moissonneuse
    @moissonneuse = Moissonneuse.find(params[:id])
  end

  def moissonneuse_params
    params.require(:moissonneuse).permit(:name, :power, :description, :brand, :price, :model, :address, :photo)
  end
end
