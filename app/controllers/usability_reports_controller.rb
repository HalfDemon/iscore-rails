class UsabilityReportsController < ApplicationController
  # GET /usability_reports
  # GET /usability_reports.json
  def index
    @usability_reports = UsabilityReport.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @usability_reports }
    end
  end

  # GET /usability_reports/1
  # GET /usability_reports/1.json
  def show
    @usability_report = UsabilityReport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @usability_report }
    end
  end

  # GET /usability_reports/new
  # GET /usability_reports/new.json
  def new
    @usability_report = UsabilityReport.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @usability_report }
    end
  end

  # GET /usability_reports/1/edit
  def edit
    @usability_report = UsabilityReport.find(params[:id])
  end

  # POST /usability_reports
  # POST /usability_reports.json
  def create
    @usability_report = UsabilityReport.new(params[:usability_report])

    respond_to do |format|
      if @usability_report.save
        format.html { redirect_to @usability_report, notice: 'Usability report was successfully created.' }
        format.json { render json: @usability_report, status: :created, location: @usability_report }
      else
        format.html { render action: "new" }
        format.json { render json: @usability_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /usability_reports/1
  # PUT /usability_reports/1.json
  def update
    @usability_report = UsabilityReport.find(params[:id])

    respond_to do |format|
      if @usability_report.update_attributes(params[:usability_report])
        format.html { redirect_to @usability_report, notice: 'Usability report was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @usability_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usability_reports/1
  # DELETE /usability_reports/1.json
  def destroy
    @usability_report = UsabilityReport.find(params[:id])
    @usability_report.destroy

    respond_to do |format|
      format.html { redirect_to usability_reports_url }
      format.json { head :no_content }
    end
  end
end
