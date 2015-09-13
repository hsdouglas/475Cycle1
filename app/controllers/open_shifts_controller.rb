class OpenShiftsController < ApplicationController
  before_action :set_open_shift, only: [:show, :edit, :update, :destroy]

  # GET /open_shifts
  # GET /open_shifts.json
  def index
    @open_shifts = OpenShift.all
  end

  # GET /open_shifts/1
  # GET /open_shifts/1.json
  def show
  end

  # GET /open_shifts/new
  def new
    @open_shift = OpenShift.new
  end

  # GET /open_shifts/1/edit
  def edit
  end

  # POST /open_shifts
  # POST /open_shifts.json
  def create
    @open_shift = OpenShift.new(open_shift_params)

    respond_to do |format|
      if @open_shift.save
        format.html { redirect_to @open_shift, notice: 'Open shift was successfully created.' }
        format.json { render action: 'show', status: :created, location: @open_shift }
      else
        format.html { render action: 'new' }
        format.json { render json: @open_shift.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /open_shifts/1
  # PATCH/PUT /open_shifts/1.json
  def update
    respond_to do |format|
      if @open_shift.update(open_shift_params)
        format.html { redirect_to @open_shift, notice: 'Open shift was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @open_shift.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /open_shifts/1
  # DELETE /open_shifts/1.json
  def destroy
    @open_shift.destroy
    respond_to do |format|
      format.html { redirect_to open_shifts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_open_shift
      @open_shift = OpenShift.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def open_shift_params
      params.require(:open_shift).permit(:set_shift_id, :original_assignee_id, :opened, :is_trade?, :is_request?, :is_cover?, :active)
    end
end
