class SondesController < ApplicationController
  def new
    # we need @chamber in our `simple_form_for`
    @chamber = Chamber.find(params[:chamber_id])
    @sonde = Sonde.new
  end

  def create
    @sonde = Sonde.new(sonde_params)
    # we need `chamber_id` to associate sonde with corresponding chamber
    @chamber = Chamber.find(params[:chamber_id])
    @sonde.chamber = @chamber
    @sonde.save
    redirect_to chamber_path(@chamber)
  end

  private

  def sonde_params
    params.require(:sonde).permit(:mesure, :day, :valeur)
  end
end
