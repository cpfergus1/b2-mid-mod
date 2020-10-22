class MechanicsController < ApplicationController

  def index
    @mechanics = Mechanics.find(params[:id])
  end

end
