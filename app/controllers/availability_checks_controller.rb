class AvailabilityChecksController < ApplicationController
  # GET /availability_checks
  # GET /availability_checks.json
  def index
    @availability_checks = AvailabilityCheck.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @availability_checks }
    end
  end

  # GET /availability_checks/1
  # GET /availability_checks/1.json
  def show
    @availability_check = AvailabilityCheck.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @availability_check }
    end
  end

  # GET /availability_checks/new
  # GET /availability_checks/new.json
  def new
    @availability_check = AvailabilityCheck.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @availability_check }
    end
  end

  # GET /availability_checks/1/edit
  def edit
    @availability_check = AvailabilityCheck.find(params[:id])
  end

  # POST /availability_checks
  # POST /availability_checks.json
  def create
    @availability_check = AvailabilityCheck.new(params[:availability_check])

    respond_to do |format|
      if @availability_check.save
        format.html { redirect_to @availability_check, notice: 'Availability check was successfully created.' }
        format.json { render json: @availability_check, status: :created, location: @availability_check }
      else
        format.html { render action: "new" }
        format.json { render json: @availability_check.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /availability_checks/1
  # PUT /availability_checks/1.json
  def update
    @availability_check = AvailabilityCheck.find(params[:id])

    respond_to do |format|
      if @availability_check.update_attributes(params[:availability_check])
        format.html { redirect_to @availability_check, notice: 'Availability check was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @availability_check.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /availability_checks/1
  # DELETE /availability_checks/1.json
  def destroy
    @availability_check = AvailabilityCheck.find(params[:id])
    @availability_check.destroy

    respond_to do |format|
      format.html { redirect_to availability_checks_url }
      format.json { head :no_content }
    end
  end
end
