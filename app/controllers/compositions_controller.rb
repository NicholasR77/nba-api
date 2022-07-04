class CompositionsController < ApplicationController
  before_action :set_composition, only: [:show, :update, :destroy]

  # GET /compositions
  def index
    @compositions = Composition.all

    render json: @compositions
  end

  # GET /compositions/1
  def show
    render json: @composition
  end

  # POST /compositions
  def create
    @composition = Composition.new(composition_params)

    if @composition.save
      render json: @composition, status: :created, location: @composition
    else
      render json: @composition.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /compositions/1
  def update
    if @composition.update(composition_params)
      render json: @composition
    else
      render json: @composition.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_composition
      @composition = Composition.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def composition_params
      params.require(:composition).permit(:author, :votes)
    end
end
