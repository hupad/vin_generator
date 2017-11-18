class VinController < ApplicationController

  def index
    random_value = rand(Vin.count)
    @vin = Vin.find(random_value)
    respond_to do |format|
      format.html
      format.json { render json: @vin.to_json }
    end
  end
end