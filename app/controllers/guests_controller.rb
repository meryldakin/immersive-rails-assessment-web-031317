class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    set_guest
  end

  private

  def set_guest
    @guest = Guest.find(params[:id])
  end

  def guest_params
    params.require(:guest).permit(:name, :occupation)
  end


end
