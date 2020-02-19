class MoissonneusesController < ApplicationController
  before_action :set_moissonneuse, only: [:edit, :update, :destroy]

  def index
    @moissonneuses = policy_scope(Moissonneuse).sample(12)

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
    params.require(:moissonneuse).permit(:name, :power, :description, :brand, :model, :address, :price, :photo)
  end
end
