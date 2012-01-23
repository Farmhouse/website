class ConfsController < ApplicationController
  def index
    @confs = Conf.all

    respond_to do |format|
      format.html
      format.json { render :json => @confs }
    end
  end

  def show
    @conf = Conf.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render :json => @conf }
    end
  end

  def new
    @conf = Conf.new

    respond_to do |format|
      format.html
      format.json { render :json => @conf }
    end
  end


  def edit
    @conf = Conf.find(params[:id])
  end

  def create
    @conf = Conf.new(params[:conf])

    respond_to do |format|
      if @conf.save
        format.html { redirect_to @conf, :notice => 'Conf was successfully created.' }
        format.json { render :json => @conf, :status => :created, :location => @conf }
      else
        format.html { render :action => "new" }
        format.json { render :json => @conf.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @conf = Conf.find(params[:id])

    respond_to do |format|
      if @conf.update_attributes(params[:conf])
        format.html { redirect_to @conf, :notice => 'Conf was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @conf.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @conf = Conf.find(params[:id])
    @conf.destroy

    respond_to do |format|
      format.html { redirect_to confs_url }
      format.json { head :ok }
    end
  end
end
