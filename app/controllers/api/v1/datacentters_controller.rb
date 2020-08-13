module Api
 module V1
class DatacenttersController < ApplicationController
  # GET /datacentters
  # GET /datacentters.xml
  def index
    @datacentters = Datacentter.all

   render json: @datacentters
#    respond_to do |format|
#      format.html # index.html.erb
#      format.xml  { render :xml => @datacentters }
#    end
  end

  # GET /datacentters/1
  # GET /datacentters/1.xml
  def show
    @datacentter = Datacentter.find(params[:id])

   render json: @datacentter
  #  respond_to do |format|
  #    format.html # show.html.erb
  #    format.xml  { render :xml => @datacentter }
  #  end
  end

  # GET /datacentters/new
  # GET /datacentters/new.xml
  def new
    @datacentter = Datacentter.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @datacentter }
    end
  end

  # GET /datacentters/1/edit
  def edit
    @datacentter = Datacentter.find(params[:id])
  end

  # POST /datacentters
  # POST /datacentters.xml
  def create
    @datacentter = Datacentter.new(params[:datacentter])

    respond_to do |format|
      if @datacentter.save
        format.html { redirect_to(@datacentter, :notice => 'Datacentter was successfully created.') }
        format.xml  { render :xml => @datacentter, :status => :created, :location => @datacentter }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @datacentter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /datacentters/1
  # PUT /datacentters/1.xml
  def update
    @datacentter = Datacentter.find(params[:id])

    respond_to do |format|
      if @datacentter.update_attributes(params[:datacentter])
        format.html { redirect_to(@datacentter, :notice => 'Datacentter was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @datacentter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /datacentters/1
  # DELETE /datacentters/1.xml
  def destroy
    @datacentter = Datacentter.find(params[:id])
    @datacentter.destroy

    respond_to do |format|
      format.html { redirect_to(datacentters_url) }
      format.xml  { head :ok }
    end
  end
end
end 
end
