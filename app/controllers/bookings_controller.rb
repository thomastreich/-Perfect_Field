class BookingsController < ApplicationController
  def new
    @moissonneuse = Moissonneuse.find(params[:moissonneuse_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @moissonneuse = Moissonneuse.find(params[:moissonneuse_id])
    @booking = Booking.new(booking_params)
    @booking.moissonneuse = @moissonneuse
    authorize @booking
    if @booking.save
      redirect_to moissonneuse_path(@moissonneuse)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:description)
  end
end
