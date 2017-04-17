# require 'pry'
class AppearancesController < ApplicationController

  def new
    # require_login
    @appearance = Appearance.new

  end

  def create
    guest_name = params[:guest_name]
    episode_number = params[:episode_number]
    rating = params[:rating]
    @guest = Guest.find_by(name: guest_name)
    @episode = Episode.find_by(number: episode_number)
    if @guest.present? && @episode.present?
      @appearance = Appearance.create(guest_id: @guest.id, episode_id: @episode.id, rating: rating)
      @appearance.save
      redirect_to episode_path(@episode)
    else
      redirect_to new_appearance_path
    end
  end


  private

  def appearance_params
    params.require(:appearance).permit(:guest_name, :episode_number)
  end
end
