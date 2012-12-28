class UsabilityReportsChecksController < ApplicationController
  # GET /usability_reports_checks
  # GET /usability_reports_checks.json
  def index
    @usability_reports_checks = UsabilityReportsCheck.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @usability_reports_checks }
    end
  end

  # GET /usability_reports_checks/1
  # GET /usability_reports_checks/1.json
  def show
    @usability_reports_check = UsabilityReportsCheck.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @usability_reports_check }
    end
  end

  # GET /usability_reports_checks/new
  # GET /usability_reports_checks/new.json
  def new
    @usability_reports_check = UsabilityReportsCheck.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @usability_reports_check }
    end
  end

  # GET /usability_reports_checks/1/edit
  def edit
    @usability_reports_check = UsabilityReportsCheck.find(params[:id])
  end

  # POST /usability_reports_checks
  # POST /usability_reports_checks.json
  def create
    @usability_reports_check = UsabilityReportsCheck.new(params[:usability_reports_check])

    respond_to do |format|
      if @usability_reports_check.save
        format.html { redirect_to @usability_reports_check, notice: 'Usability reports check was successfully created.' }
        format.json { render json: @usability_reports_check, status: :created, location: @usability_reports_check }
      else
        format.html { render action: "new" }
        format.json { render json: @usability_reports_check.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /usability_reports_checks/1
  # PUT /usability_reports_checks/1.json
  def update
    @usability_reports_check = UsabilityReportsCheck.find(params[:id])

    respond_to do |format|
      if @usability_reports_check.update_attributes(params[:usability_reports_check])
        format.html { redirect_to @usability_reports_check, notice: 'Usability reports check was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @usability_reports_check.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usability_reports_checks/1
  # DELETE /usability_reports_checks/1.json
  def destroy
    @usability_reports_check = UsabilityReportsCheck.find(params[:id])
    @usability_reports_check.destroy

    respond_to do |format|
      format.html { redirect_to usability_reports_checks_url }
      format.json { head :no_content }
    end
  end
end
