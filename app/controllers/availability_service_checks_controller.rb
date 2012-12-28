class AvailabilityServiceChecksController < ApplicationController
  # GET /availability_service_checks
  # GET /availability_service_checks.json
  def index
    @availability_service_checks = AvailabilityServiceCheck.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @availability_service_checks }
    end
  end

  # GET /availability_service_checks/1
  # GET /availability_service_checks/1.json
  def show
    @availability_service_check = AvailabilityServiceCheck.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @availability_service_check }
    end
  end

  # GET /availability_service_checks/new
  # GET /availability_service_checks/new.json
  def new
    @availability_service_check = AvailabilityServiceCheck.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @availability_service_check }
    end
  end

  # GET /availability_service_checks/1/edit
  def edit
    @availability_service_check = AvailabilityServiceCheck.find(params[:id])
  end

  # POST /availability_service_checks
  # POST /availability_service_checks.json
  def create
    @availability_service_check = AvailabilityServiceCheck.new(params[:availability_service_check])

    respond_to do |format|
      if @availability_service_check.save
        format.html { redirect_to @availability_service_check, notice: 'Availability service check was successfully created.' }
        format.json { render json: @availability_service_check, status: :created, location: @availability_service_check }
      else
        format.html { render action: "new" }
        format.json { render json: @availability_service_check.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /availability_service_checks/1
  # PUT /availability_service_checks/1.json
  def update
    @availability_service_check = AvailabilityServiceCheck.find(params[:id])

    respond_to do |format|
      if @availability_service_check.update_attributes(params[:availability_service_check])
        format.html { redirect_to @availability_service_check, notice: 'Availability service check was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @availability_service_check.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /availability_service_checks/1
  # DELETE /availability_service_checks/1.json
  def destroy
    @availability_service_check = AvailabilityServiceCheck.find(params[:id])
    @availability_service_check.destroy

    respond_to do |format|
      format.html { redirect_to availability_service_checks_url }
      format.json { head :no_content }
    end
  end
end
