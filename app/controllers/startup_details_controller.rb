class StartupDetailsController < ApplicationController
  before_action :set_startup_detail, only: [:show, :edit, :update, :destroy]

  # GET /startup_details
  # GET /startup_details.json
  def index
    @startup_details = StartupDetail.all
  end

  # GET /startup_details/1
  # GET /startup_details/1.json
  def show
  end

  # GET /startup_details/new
  def new
    @startup_detail = StartupDetail.new
  end

  # GET /startup_details/1/edit
  def edit
  end

  # POST /startup_details
  # POST /startup_details.json
  def create
    @startup_detail = StartupDetail.new(startup_detail_params)

    respond_to do |format|
      if @startup_detail.save
        format.html { redirect_to @startup_detail, notice: 'Startup detail was successfully created.' }
        format.json { render :show, status: :created, location: @startup_detail }
      else
        format.html { render :new }
        format.json { render json: @startup_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /startup_details/1
  # PATCH/PUT /startup_details/1.json
  def update
    respond_to do |format|
      if @startup_detail.update(startup_detail_params)
        format.html { redirect_to @startup_detail, notice: 'Startup detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @startup_detail }
      else
        format.html { render :edit }
        format.json { render json: @startup_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /startup_details/1
  # DELETE /startup_details/1.json
  def destroy
    @startup_detail.destroy
    respond_to do |format|
      format.html { redirect_to startup_details_url, notice: 'Startup detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_startup_detail
      @startup_detail = StartupDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def startup_detail_params
      params.require(:startup_detail).permit(:startup_id, :startup_name, :logo, :name, :surname, :job_title, :email, :phone, :mobile, :short_project_description, :one_line_pitch, :business_summary, :customer_problem, :products_and_services, :target_market, :sales_marketing_strategy, :business_model, :competitors, :competitive_advantage, :management_team, :advisory_board, :revenue_model, :break_even_analysis, :previous_investiments, :use_of_funds, :past_significant_milestones, :exit_strategy, :comparable_exit_markets, :value_proposition, :resources_beyond_capital, :additional_info)
    end
end
