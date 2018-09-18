class PeacesController < ApplicationController
  before_action :set_peace, only: [:show, :edit, :update, :destroy]

  # GET /peaces
  # GET /peaces.json
  def index
    @peaces = Peace.all
    render json: @peaces
  end

  # GET /peaces/1
  # GET /peaces/1.json
  def show
    @peace = Peace.find(params[:id])
    render json: @peace
  end
end
