class VinController < ApplicationController

  def index
    min = Vin.first.id
    max = Vin.last.id
    random_value = rand(min..max)
    @vin = Vin.find(random_value)
    respond_to do |format|
      format.html
      format.json { render json: @vin.to_json }
    end
  end
end