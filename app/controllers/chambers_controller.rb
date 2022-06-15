class ChambersController < ApplicationController

  def new
    @chamber = Chamber.new # needed to instantiate the form_for
  end

  def create
    @chamber = Chamber.new(chamber_params)
    @chamber.save

  end

  def show
    @chamber = Chamber.find(params[:id])
  end

  def edit
    @chamber = Chamber.find(params[:id])


  end

  def update
    @chamber = Chamber.find(params[:id])
    @chamber.update(chamber_params)
    redirect_to chamber_path(@chamber)
  end

  private

  def chamber_params
    params.require(:chamber).permit(:name, :temperature, :hygrometrie, :day, :isValid, :user_id)
  end

end
