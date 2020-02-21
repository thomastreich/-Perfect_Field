class BookingsController < ApplicationController
  def index
    @moissonneuse = Moissonneuse.all
    @bookings = policy_scope(Booking) # All bookings for this moissonneuse
    @past_bookings = policy_scope(Booking).past
    @current_bookings = policy_scope(Booking).current
    @future_bookings = policy_scope(Booking).future

  end

  def create
    @moissonneuse = Moissonneuse.find(params[:moissonneuse_id])
    @booking = Booking.new(booking_params)
    @booking.moissonneuse = @moissonneuse
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def destroy
    # @booking.user = current_user
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:description, :starting_date, :ending_date)
  end
end
