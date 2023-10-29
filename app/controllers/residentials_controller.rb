class ResidentialsController < ApplicationController
  def index
    @residentials = Residential.all
    render :index
  end

  def create
    @residential = Residential.create(
      description: params[:description],
      year_built: params[:year_built],
      square_feet: params[:square_feet],
      bedrooms: params[:bedrooms],
      bathrooms: params[:bathrooms],
      floors: params[:floors],
      availability: params[:availability],
      address: params[:address],
      price: params[:price],
    )
    render :show
  end

  def show
    @residential = Residential.find_by(id: params[:id])
    render :show
  end
end
