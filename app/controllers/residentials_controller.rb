class ResidentialsController < ApplicationController
  def index
    @residentials = Residential.all
    render :index
  end
end
