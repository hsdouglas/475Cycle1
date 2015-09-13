class SetShiftsController < ApplicationController
  before_action :set_set_shift, only: [:show, :edit, :update, :destroy]

  # GET /set_shifts
  # GET /set_shifts.json
  def index
    @set_shifts = SetShift.all
  end

  # GET /set_shifts/1
  # GET /set_shifts/1.json
  def show
  end

  # GET /set_shifts/new
  def new
    @set_shift = SetShift.new
  end

  # GET /set_shifts/1/edit
  def edit
  end

  # POST /set_shifts
  # POST /set_shifts.json
  def create
    @set_shift = SetShift.new(set_shift_params)

    respond_to do |format|
      if @set_shift.save
        format.html { redirect_to @set_shift, notice: 'Set shift was successfully created.' }
        format.json { render action: 'show', status: :created, location: @set_shift }
      else
        format.html { render action: 'new' }
        format.json { render json: @set_shift.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /set_shifts/1
  # PATCH/PUT /set_shifts/1.json
  def update
    respond_to do |format|
      if @set_shift.update(set_shift_params)
        format.html { redirect_to @set_shift, notice: 'Set shift was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @set_shift.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /set_shifts/1
  # DELETE /set_shifts/1.json
  def destroy
    @set_shift.destroy
    respond_to do |format|
      format.html { redirect_to set_shifts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_set_shift
      @set_shift = SetShift.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def set_shift_params
      params.require(:set_shift).permit(:assignee_id, :assigner_id, :start, :end, :is_PTO?)
    end
end
