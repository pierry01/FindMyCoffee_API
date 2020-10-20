class Api::V1::GoogleStoresController < ApplicationController
  def index
    render json: GetGoogleCoffeeListService.new(
      params[:latitude], params[:longitude]
    ).call
  end
end
