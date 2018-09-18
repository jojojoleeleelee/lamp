class LovesController < ApplicationController
  before_action :set_lofe, only: [:show, :edit, :update, :destroy]

  # GET /loves
  # GET /loves.json
  def index
    @loves = Love.all
    render json: @loves
  end

  # GET /loves/1
  # GET /loves/1.json
  def show
    @love = Love.find(params[:id])
    render json: @love
  end
end
