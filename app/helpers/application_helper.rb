module ApplicationHelper
  def moissonneuses_show?
    params[:controller] == 'moissonneuses' && params[:action] == "show"
  end
end
