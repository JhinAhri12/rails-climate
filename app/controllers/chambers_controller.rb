class ChambersController < ApplicationController

  def new
    @chamber = Chamber.new # needed to instantiate the form_for
  end

  def create
    @chamber = Chamber.new(chamber_params)
    @chamber.save
    # Will raise ActiveModel::ForbiddenAttributesError
  end

  def show
    @chamber = Chamber.find(params[:id])
  end

  private

  def chamber_params
    params.require(:chamber).permit(:name, :temperature, :hygrometrie, :day, :isValid)
  end

end
