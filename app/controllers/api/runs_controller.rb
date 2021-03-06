class Api::RunsController < ApplicationController
  before_action :set_run, only: [:show, :update, :destroy]

  # GET /runs
  def index
    if logged_in?
    @runs = current_user.runs 

    render json: RunSerializer.new(@runs)
    else 
      render json: {
        error: "you must be logged in to see runs"
      }
    end 
  end

  # GET /runs/1
  def show
    render json: @run
  end

  # POST /runs
  def create
    @run = Run.new(run_params)

    if @run.save
      render json: @run, status: :created
    else
      render json: @run.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /runs/1
  def update
    if @run.update(run_params)
      render json: @run
    else
      render json: @run.errors, status: :unprocessable_entity
    end
  end

  # DELETE /runs/1
  def destroy
    @run.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_run
      @run = Run.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def run_params
      params.require(:run).permit(:name, :distance, :date, :comment)
    end
end
  