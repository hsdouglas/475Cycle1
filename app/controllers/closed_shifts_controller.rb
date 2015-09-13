class ClosedShiftsController < ApplicationController
  before_action :set_closed_shift, only: [:show, :edit, :update, :destroy]

  # GET /closed_shifts
  # GET /closed_shifts.json
  def index
    @closed_shifts = ClosedShift.all
  end

  # GET /closed_shifts/1
  # GET /closed_shifts/1.json
  def show
  end

  # GET /closed_shifts/new
  def new
    @closed_shift = ClosedShift.new
  end

  # GET /closed_shifts/1/edit
  def edit
  end

  # POST /closed_shifts
  # POST /closed_shifts.json
  def create
    @closed_shift = ClosedShift.new(closed_shift_params)

    respond_to do |format|
      if @closed_shift.save
        format.html { redirect_to @closed_shift, notice: 'Closed shift was successfully created.' }
        format.json { render action: 'show', status: :created, location: @closed_shift }
      else
        format.html { render action: 'new' }
        format.json { render json: @closed_shift.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /closed_shifts/1
  # PATCH/PUT /closed_shifts/1.json
  def update
    respond_to do |format|
      if @closed_shift.update(closed_shift_params)
        format.html { redirect_to @closed_shift, notice: 'Closed shift was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @closed_shift.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /closed_shifts/1
  # DELETE /closed_shifts/1.json
  def destroy
    @closed_shift.destroy
    respond_to do |format|
      format.html { redirect_to closed_shifts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_closed_shift
      @closed_shift = ClosedShift.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def closed_shift_params
      params.require(:closed_shift).permit(:open_shift_id, :new_assignee_id, :claimed)
    end
end
