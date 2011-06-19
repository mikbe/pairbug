class InterestsController < ApplicationController
  # GET /interests
  # GET /interests.json
  def index
    @interests = Interest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @interests }
    end
  end

  # GET /interests/1
  # GET /interests/1.json
  def show
    @interest = Interest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @interest }
    end
  end

  # GET /interests/new
  # GET /interests/new.json
  def new
    @interest = Interest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @interest }
    end
  end

  # GET /interests/1/edit
  def edit
    @interest = Interest.find(params[:id])
  end

  # POST /interests
  # POST /interests.json
  def create
    @interest = Interest.new(params[:interest])

    respond_to do |format|
      if @interest.save
        format.html { redirect_to @interest, notice: 'Interest was successfully created.' }
        format.json { render json: @interest, status: :created, location: @interest }
      else
        format.html { render action: "new" }
        format.json { render json: @interest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /interests/1
  # PUT /interests/1.json
  def update
    @interest = Interest.find(params[:id])

    respond_to do |format|
      if @interest.update_attributes(params[:interest])
        format.html { redirect_to @interest, notice: 'Interest was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @interest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interests/1
  # DELETE /interests/1.json
  def destroy
    @interest = Interest.find(params[:id])
    @interest.destroy

    respond_to do |format|
      format.html { redirect_to interests_url }
      format.json { head :ok }
    end
  end
end
