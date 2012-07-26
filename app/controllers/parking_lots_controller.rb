class ParkingLotsController < ApplicationController
  # GET /parking_lots
  # GET /parking_lots.json
  def index
    @parking_lots = ParkingLot.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @parking_lots }
    end
  end

  # GET /parking_lots/1
  # GET /parking_lots/1.json
  def show
    @parking_lot = ParkingLot.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @parking_lot }
    end
  end

  # GET /parking_lots/new
  # GET /parking_lots/new.json
  def new
    @parking_lot = ParkingLot.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @parking_lot }
    end
  end

  # GET /parking_lots/1/edit
  def edit
    @parking_lot = ParkingLot.find(params[:id])
  end

  # POST /parking_lots
  # POST /parking_lots.json
  def create
    @parking_lot = ParkingLot.new(params[:parking_lot])

    respond_to do |format|
      if @parking_lot.save
        format.html { redirect_to @parking_lot, notice: 'Parking lot was successfully created.' }
        format.json { render json: @parking_lot, status: :created, location: @parking_lot }
      else
        format.html { render action: "new" }
        format.json { render json: @parking_lot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /parking_lots/1
  # PUT /parking_lots/1.json
  def update
    @parking_lot = ParkingLot.find(params[:id])

    respond_to do |format|
      if @parking_lot.update_attributes(params[:parking_lot])
        format.html { redirect_to @parking_lot, notice: 'Parking lot was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @parking_lot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parking_lots/1
  # DELETE /parking_lots/1.json
  def destroy
    @parking_lot = ParkingLot.find(params[:id])
    @parking_lot.destroy

    respond_to do |format|
      format.html { redirect_to parking_lots_url }
      format.json { head :no_content }
    end
  end
end
