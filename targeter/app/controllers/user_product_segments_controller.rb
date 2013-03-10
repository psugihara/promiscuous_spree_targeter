class UserProductSegmentsController < ApplicationController
  # GET /user_product_segments
  # GET /user_product_segments.json
  def index
    @user_product_segments = UserProductSegment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_product_segments }
    end
  end

  # GET /user_product_segments/1
  # GET /user_product_segments/1.json
  def show
    @user_product_segment = UserProductSegment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_product_segment }
    end
  end

  # GET /user_product_segments/new
  # GET /user_product_segments/new.json
  def new
    @user_product_segment = UserProductSegment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_product_segment }
    end
  end

  # GET /user_product_segments/1/edit
  def edit
    @user_product_segment = UserProductSegment.find(params[:id])
  end

  # POST /user_product_segments
  # POST /user_product_segments.json
  def create
    @user_product_segment = UserProductSegment.new(params[:user_product_segment])

    respond_to do |format|
      if @user_product_segment.save
        format.html { redirect_to @user_product_segment, notice: 'User product segment was successfully created.' }
        format.json { render json: @user_product_segment, status: :created, location: @user_product_segment }
      else
        format.html { render action: "new" }
        format.json { render json: @user_product_segment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_product_segments/1
  # PUT /user_product_segments/1.json
  def update
    @user_product_segment = UserProductSegment.find(params[:id])

    respond_to do |format|
      if @user_product_segment.update_attributes(params[:user_product_segment])
        format.html { redirect_to @user_product_segment, notice: 'User product segment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_product_segment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_product_segments/1
  # DELETE /user_product_segments/1.json
  def destroy
    @user_product_segment = UserProductSegment.find(params[:id])
    @user_product_segment.destroy

    respond_to do |format|
      format.html { redirect_to user_product_segments_url }
      format.json { head :no_content }
    end
  end
end
