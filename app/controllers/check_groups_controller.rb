class CheckGroupsController < ApplicationController
  # GET /check_groups
  # GET /check_groups.json
  def index
    @check_groups = CheckGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @check_groups }
    end
  end

  # GET /check_groups/1
  # GET /check_groups/1.json
  def show
    @check_group = CheckGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @check_group }
    end
  end

  # GET /check_groups/new
  # GET /check_groups/new.json
  def new
    @check_group = CheckGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @check_group }
    end
  end

  # GET /check_groups/1/edit
  def edit
    @check_group = CheckGroup.find(params[:id])
  end

  # POST /check_groups
  # POST /check_groups.json
  def create
    @check_group = CheckGroup.new(params[:check_group])

    respond_to do |format|
      if @check_group.save
        format.html { redirect_to @check_group, notice: 'Check group was successfully created.' }
        format.json { render json: @check_group, status: :created, location: @check_group }
      else
        format.html { render action: "new" }
        format.json { render json: @check_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /check_groups/1
  # PUT /check_groups/1.json
  def update
    @check_group = CheckGroup.find(params[:id])

    respond_to do |format|
      if @check_group.update_attributes(params[:check_group])
        format.html { redirect_to @check_group, notice: 'Check group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @check_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /check_groups/1
  # DELETE /check_groups/1.json
  def destroy
    @check_group = CheckGroup.find(params[:id])
    @check_group.destroy

    respond_to do |format|
      format.html { redirect_to check_groups_url }
      format.json { head :no_content }
    end
  end
end
