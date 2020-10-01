class CoachesController < ApplicationController
  before_action :set_coach, only: [:show, :edit, :update, :destroy]

  # GET /coaches
  # GET /coaches.json
  def index
    @coaches = Coach.includes(:teams).page(params[:page])
  end

  # GET /coaches/1
  # GET /coaches/1.json
  def show
  end

  # GET /coaches/new
  def new
    @coach = Coach.new
  end

  # GET /coaches/1/edit
  def edit
  end

  # POST /coaches
  # POST /coaches.json
  def create
    @coach = Coach.new(coach_params)

    respond_to do |format|
      if @coach.save
        format.html { redirect_to @coach, notice: 'Coach was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /coaches/1
  # PATCH/PUT /coaches/1.json
  def update
    respond_to do |format|
      if @coach.update(coach_params)
        format.html { redirect_to @coach, notice: 'Coach was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /coaches/1
  def destroy
    @coach.destroy
    respond_to do |format|
      format.html { redirect_to coaches_url, notice: 'Coach was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coach
      @coach = Coach.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coach_params
      params.require(:coach).permit(:name, :birthdate, :gender, :avatar)
    end
end
