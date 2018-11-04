class CitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :components]

  def components
    @monuments = Monument.where(city: "1")
    gon.monuments = @monuments
  end

  def home
    @cities = City.all
    gon.cities = @cities
  end

  def search
    redirect_to explications_path(params[:name])
  end

  def explications
    # Sélectionne la ville pour pouvoir afficher son nom
    @city = City.where(name: params[:name]).first
  end
end
