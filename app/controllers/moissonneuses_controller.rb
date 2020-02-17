class MoissonneusesController < ApplicationController
  def index
    @moissonneuses = Moissonneuse.all
  end
end
