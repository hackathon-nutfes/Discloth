class GendersController < ApplicationController
  before_action :set_gender, only: [:show, :update, :destroy]

  # GET /genders
  # GET /genders.json
  def index
    @genders = Gender.all
  end

  # GET /genders/1
  # GET /genders/1.json
  def show
  end

  # POST /genders
  # POST /genders.json
  def create
    @gender = Gender.new(gender_params)

    if @gender.save
      render :show, status: :created, location: @gender
    else
      render json: @gender.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /genders/1
  # PATCH/PUT /genders/1.json
  def update
    if @gender.update(gender_params)
      render :show, status: :ok, location: @gender
    else
      render json: @gender.errors, status: :unprocessable_entity
    end
  end

  # DELETE /genders/1
  # DELETE /genders/1.json
  def destroy
    @gender.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gender
      @gender = Gender.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gender_params
      params.require(:gender).permit(:name)
    end
end
