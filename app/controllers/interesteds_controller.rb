class InterestedsController < ApplicationController
  # GET /interesteds
  # GET /interesteds.json
  def index
    @interesteds = Interested.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @interesteds }
    end
  end

  # GET /interesteds/1
  # GET /interesteds/1.json
  def show
    @interested = Interested.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @interested }
    end
  end

  # GET /interesteds/new
  # GET /interesteds/new.json
  def new
    @interested = Interested.new
    @interested.suggestion_id = params[:suggestion_id]

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @interested }
    end
  end

  # GET /interesteds/1/edit
  def edit
    @interested = Interested.find(params[:id])
  end

  # POST /interesteds
  # POST /interesteds.json
  def create
    @interested = Interested.new(params[:interested])
    @interested.user_id = current_user.id

    respond_to do |format|
      if @interested.save
        format.html { redirect_to @interested, notice: 'Interested was successfully created.' }
        format.json { render json: @interested, status: :created, location: @interested }
      else
        format.html { render action: "new" }
        format.json { render json: @interested.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /interesteds/1
  # PUT /interesteds/1.json
  def update
    @interested = Interested.find(params[:id])

    respond_to do |format|
      if @interested.update_attributes(params[:interested])
        format.html { redirect_to @interested, notice: 'Interested was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @interested.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interesteds/1
  # DELETE /interesteds/1.json
  def destroy
    @interested = Interested.find(params[:id])
    @interested.destroy

    respond_to do |format|
      format.html { redirect_to interesteds_url }
      format.json { head :no_content }
    end
  end
end
