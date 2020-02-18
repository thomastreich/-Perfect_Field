class MoissonneusesController < ApplicationController
  def index
    @moissonneuses = policy_scope(Moissonneuse).order(created_at: :desc)
  end

    def show
      @moissonneuse = Moissonneuse.find(params[:id])
      authorize @moissonneuse
    end

  def new
    @moissonneuse = Moissonneuse.new
  end

  def create
    @moissonneuse = Moissonneuse.new(moissonneuse_params)
    @moissonneuse.user = current_user
    authorize @moissonneuse
    if @moissonneuse.save!
      redirect_to moissonneuse_path(@moissonneuse)
    else
      render :new
    end
  end

  def edit
   @moissonneuse = Moissonneuse.find(params[:id])
  end

  def update
    @moissonneuse = Moissonneuse.find(params[:id])
    @moissonneuse.user = current_user
    @moissonneuse.update(moissonneuse_params)
    redirect_to moissonneuse_path(@moissonneuse)
  end

  end

  def destroy
    @moissonneuse = Moissonneuse.find(params[:id])
    @moissonneuse.destroy
    redirect_to root_path
  end

  private

  def moissonneuse_params
    params.require(:moissonneuse).permit(:name, :power, :description, :brand, :model, :address, :photo)
  end
end
