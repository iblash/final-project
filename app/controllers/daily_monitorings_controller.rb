class DailyMonitoringsController < ApplicationController
  before_action :set_daily_monitoring, only: %i[ show edit update destroy ]

  # GET /daily_monitorings or /daily_monitorings.json
  def index
    @daily_monitorings = DailyMonitoring.all
  end

  # GET /daily_monitorings/1 or /daily_monitorings/1.json
  def show
  end

  # GET /daily_monitorings/new
  def new
    @daily_monitoring = DailyMonitoring.new
  end

  # GET /daily_monitorings/1/edit
  def edit
  end

  # POST /daily_monitorings or /daily_monitorings.json
  def create
    @daily_monitoring = DailyMonitoring.new(daily_monitoring_params)

    respond_to do |format|
      if @daily_monitoring.save
        format.html { redirect_to daily_monitoring_url(@daily_monitoring), notice: "Daily monitoring was successfully created." }
        format.json { render :show, status: :created, location: @daily_monitoring }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @daily_monitoring.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_monitorings/1 or /daily_monitorings/1.json
  def update
    respond_to do |format|
      if @daily_monitoring.update(daily_monitoring_params)
        format.html { redirect_to daily_monitoring_url(@daily_monitoring), notice: "Daily monitoring was successfully updated." }
        format.json { render :show, status: :ok, location: @daily_monitoring }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @daily_monitoring.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_monitorings/1 or /daily_monitorings/1.json
  def destroy
    @daily_monitoring.destroy

    respond_to do |format|
      format.html { redirect_to daily_monitorings_url, notice: "Daily monitoring was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_monitoring
      @daily_monitoring = DailyMonitoring.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def daily_monitoring_params
      params.require(:daily_monitoring).permit(:title, :description)
    end
end
