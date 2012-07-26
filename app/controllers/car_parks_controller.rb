class CarParksController < ApplicationController
  # GET /car_parks
  # GET /car_parks.json
  def index
    @car_parks = CarPark.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @car_parks }
    end
  end

  # GET /car_parks/1
  # GET /car_parks/1.json
  def show
    @car_park = CarPark.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @car_park }
    end
  end

  # GET /car_parks/new
  # GET /car_parks/new.json
  def new
    @car_park = CarPark.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @car_park }
    end
  end

  # GET /car_parks/1/edit
  def edit
    @car_park = CarPark.find(params[:id])
  end

  # POST /car_parks
  # POST /car_parks.json
  def create
    @car_park = CarPark.new(params[:car_park])

    respond_to do |format|
      if @car_park.save
        format.html { redirect_to @car_park, notice: 'Car park was successfully created.' }
        format.json { render json: @car_park, status: :created, location: @car_park }
      else
        format.html { render action: "new" }
        format.json { render json: @car_park.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /car_parks/1
  # PUT /car_parks/1.json
  def update
    @car_park = CarPark.find(params[:id])

    respond_to do |format|
      if @car_park.update_attributes(params[:car_park])
        format.html { redirect_to @car_park, notice: 'Car park was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @car_park.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_parks/1
  # DELETE /car_parks/1.json
  def destroy
    @car_park = CarPark.find(params[:id])
    @car_park.destroy

    respond_to do |format|
      format.html { redirect_to car_parks_url }
      format.json { head :no_content }
    end
  end
end
