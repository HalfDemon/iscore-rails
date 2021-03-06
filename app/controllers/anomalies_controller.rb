class AnomaliesController < ApplicationController
  # GET /anomalies
  # GET /anomalies.json
  def index
    @anomalies = Anomaly.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @anomalies }
    end
  end

  # GET /anomalies/1
  # GET /anomalies/1.json
  def show
    @anomaly = Anomaly.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @anomaly }
    end
  end

  # GET /anomalies/new
  # GET /anomalies/new.json
  def new
    @anomaly = Anomaly.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @anomaly }
    end
  end

  # GET /anomalies/1/edit
  def edit
    @anomaly = Anomaly.find(params[:id])
  end

  # POST /anomalies
  # POST /anomalies.json
  def create
    @anomaly = Anomaly.new(params[:anomaly])

    respond_to do |format|
      if @anomaly.save
        format.html { redirect_to @anomaly, notice: 'Anomaly was successfully created.' }
        format.json { render json: @anomaly, status: :created, location: @anomaly }
      else
        format.html { render action: "new" }
        format.json { render json: @anomaly.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /anomalies/1
  # PUT /anomalies/1.json
  def update
    @anomaly = Anomaly.find(params[:id])

    respond_to do |format|
      if @anomaly.update_attributes(params[:anomaly])
        format.html { redirect_to @anomaly, notice: 'Anomaly was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @anomaly.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anomalies/1
  # DELETE /anomalies/1.json
  def destroy
    @anomaly = Anomaly.find(params[:id])
    @anomaly.destroy

    respond_to do |format|
      format.html { redirect_to anomalies_url }
      format.json { head :no_content }
    end
  end
end
