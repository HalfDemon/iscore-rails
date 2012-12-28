class UsabilityReportsSubmissionsController < ApplicationController
  # GET /usability_reports_submissions
  # GET /usability_reports_submissions.json
  def index
    @usability_reports_submissions = UsabilityReportsSubmission.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @usability_reports_submissions }
    end
  end

  # GET /usability_reports_submissions/1
  # GET /usability_reports_submissions/1.json
  def show
    @usability_reports_submission = UsabilityReportsSubmission.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @usability_reports_submission }
    end
  end

  # GET /usability_reports_submissions/new
  # GET /usability_reports_submissions/new.json
  def new
    @usability_reports_submission = UsabilityReportsSubmission.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @usability_reports_submission }
    end
  end

  # GET /usability_reports_submissions/1/edit
  def edit
    @usability_reports_submission = UsabilityReportsSubmission.find(params[:id])
  end

  # POST /usability_reports_submissions
  # POST /usability_reports_submissions.json
  def create
    @usability_reports_submission = UsabilityReportsSubmission.new(params[:usability_reports_submission])

    respond_to do |format|
      if @usability_reports_submission.save
        format.html { redirect_to @usability_reports_submission, notice: 'Usability reports submission was successfully created.' }
        format.json { render json: @usability_reports_submission, status: :created, location: @usability_reports_submission }
      else
        format.html { render action: "new" }
        format.json { render json: @usability_reports_submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /usability_reports_submissions/1
  # PUT /usability_reports_submissions/1.json
  def update
    @usability_reports_submission = UsabilityReportsSubmission.find(params[:id])

    respond_to do |format|
      if @usability_reports_submission.update_attributes(params[:usability_reports_submission])
        format.html { redirect_to @usability_reports_submission, notice: 'Usability reports submission was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @usability_reports_submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usability_reports_submissions/1
  # DELETE /usability_reports_submissions/1.json
  def destroy
    @usability_reports_submission = UsabilityReportsSubmission.find(params[:id])
    @usability_reports_submission.destroy

    respond_to do |format|
      format.html { redirect_to usability_reports_submissions_url }
      format.json { head :no_content }
    end
  end
end
