class IntrusionReportsController < ApplicationController
  # GET /intrusion_reports
  # GET /intrusion_reports.json
  def index
    @intrusion_reports = IntrusionReport.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @intrusion_reports }
    end
  end

  # GET /intrusion_reports/1
  # GET /intrusion_reports/1.json
  def show
    @intrusion_report = IntrusionReport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @intrusion_report }
    end
  end

  # GET /intrusion_reports/new
  # GET /intrusion_reports/new.json
  def new
    @intrusion_report = IntrusionReport.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @intrusion_report }
    end
  end

  # GET /intrusion_reports/1/edit
  def edit
    @intrusion_report = IntrusionReport.find(params[:id])
  end

  # POST /intrusion_reports
  # POST /intrusion_reports.json
  def create
    @intrusion_report = IntrusionReport.new(params[:intrusion_report])

    respond_to do |format|
      if @intrusion_report.save
        format.html { redirect_to @intrusion_report, notice: 'Intrusion report was successfully created.' }
        format.json { render json: @intrusion_report, status: :created, location: @intrusion_report }
      else
        format.html { render action: "new" }
        format.json { render json: @intrusion_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /intrusion_reports/1
  # PUT /intrusion_reports/1.json
  def update
    @intrusion_report = IntrusionReport.find(params[:id])

    respond_to do |format|
      if @intrusion_report.update_attributes(params[:intrusion_report])
        format.html { redirect_to @intrusion_report, notice: 'Intrusion report was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @intrusion_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intrusion_reports/1
  # DELETE /intrusion_reports/1.json
  def destroy
    @intrusion_report = IntrusionReport.find(params[:id])
    @intrusion_report.destroy

    respond_to do |format|
      format.html { redirect_to intrusion_reports_url }
      format.json { head :no_content }
    end
  end
end
