# coding: utf-8 
class EnumviewsController < ApplicationController
  # GET /enumviews
  # GET /enumviews.json
  def index
    @enumviews = Enumview.all
    @enumview = Enumview.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @enumviews }
    end
  end

  # GET /enumviews/1
  # GET /enumviews/1.json
  def show
    @enumview = Enumview.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @enumview }
    end
  end

  # GET /enumviews/new
  # GET /enumviews/new.json
  def new
    @enumview = Enumview.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @enumview }
    end
  end

  # GET /enumviews/1/edit
  def edit
    @enumview = Enumview.find(params[:id])
  end

  # POST /enumviews
  # POST /enumviews.json
  def create
    @enumview = Enumview.new(params[:enumview])

    respond_to do |format|
      if @enumview.save
        format.html { redirect_to @enumview, notice: 'Enumview was successfully created.' }
        format.json { render json: @enumview, status: :created, location: @enumview }
      else
        format.html { render action: "new" }
        format.json { render json: @enumview.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /enumviews/1
  # PUT /enumviews/1.json
  def update
    @enumview = Enumview.find(params[:id])

    respond_to do |format|
      if @enumview.update_attributes(params[:enumview])
        format.html { redirect_to @enumview, notice: 'Enumview was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @enumview.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enumviews/1
  # DELETE /enumviews/1.json
  def destroy
    @enumview = Enumview.find(params[:id])
    @enumview.destroy

    respond_to do |format|
      format.html { redirect_to enumviews_url }
      format.json { head :no_content }
    end
  end
end
