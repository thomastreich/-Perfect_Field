module ApplicationHelper
  def moissonneuses_show?
    params[:controller] == 'moissonneuses' && params[:action] == "show"
  end

  def moissonneuse_booking?
    params[:controller] == 'bookings' && params[:action] == "index"
  end
end
