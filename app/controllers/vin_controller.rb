class VinController < ApplicationController

  def index
    @vin = Vin.limit(1).order("RAND()")
    respond_to do |format|
      format.html
      format.json { render json: @vin.to_json }
    end
  end
end