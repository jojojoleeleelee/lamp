class JoysController < ApplicationController
  before_action :set_joy, only: [:show, :edit, :update, :destroy]

  # GET /joys
  # GET /joys.json
  def index
    @joys = Joy.all
    render json: @joy
  end

  # GET /joys/1
  # GET /joys/1.json
  def show
    @joy = Joy.find(params[:id])
    render json: @joy
  end
end
