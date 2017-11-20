class VinController < ApplicationController

  def index
    @vin = Vin.limit(1).order("RAND()").first
    respond_to do |format|
      format.html
      format.json { render json: @vin.to_json }
    end
  end
end