class MoissonneusesController < ApplicationController
  before_action :set_moissonneuse, only: [:edit, :update, :destroy]

  def index
    @moissonneuses = policy_scope(Moissonneuse).limit(12)
    @markers = @moissonneuses.geocoded.map do |moissonneuse|
      {
        lat: moissonneuse.latitude,
        lng: moissonneuse.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { moissonneuse: moissonneuse })
      }
    end

    if params[:search] && params[:search][:region].present?
      @moissonneuses = @moissonneuses.where(region: params[:search][:region])
    end

  end

  def show
  end

  def new
    @moissonneuse = Moissonneuse.new
    authorize @moissonneuse
  end

  def create
    @moissonneuse = Moissonneuse.new(moissonneuse_params)
    authorize @moissonneuse
    @moissonneuse.user = current_user
    if @moissonneuse.save!
      redirect_to moissonneuse_path(@moissonneuse)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @moissonneuse.user = current_user
    @moissonneuse.update(moissonneuse_params)
    redirect_to moissonneuse_path(@moissonneuse)
  end

  def destroy
    @moissonneuse.destroy
    redirect_to root_path
  end

  private

  def set_moissonneuse
    @moissonneuse = Moissonneuse.find(params[:id])
    authorize @moissonneuse
  end

  def moissonneuse_params
    params.require(:moissonneuse).permit(:name, :power, :description, :brand, :price, :model, :address, :photo)
  end
end
