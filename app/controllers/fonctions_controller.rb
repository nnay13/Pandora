class FonctionsController < ApplicationController
  # GET /fonctions
  # GET /fonctions.xml

  def index
    @fonctions = Fonction.all :order=>"intitule"

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @fonctions }
    end
  end

  # GET /fonctions/1
  # GET /fonctions/1.xml
  def show
    @fonction = Fonction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @fonction }
    end
  end

  # GET /fonctions/new
  # GET /fonctions/new.xml
  def new
    @fonction = Fonction.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @fonction }
    end
  end

  # GET /fonctions/1/edit
  def edit
    @fonction = Fonction.find(params[:id])
  end

  # POST /fonctions
  # POST /fonctions.xml
  def create
    @fonction = Fonction.new(params[:fonction])

    respond_to do |format|
      if @fonction.save
        format.html { redirect_to(@fonction, :notice => 'Fonction was successfully created.') }
        format.xml  { render :xml => @fonction, :status => :created, :location => @fonction }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @fonction.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /fonctions/1
  # PUT /fonctions/1.xml
  def update
    @fonction = Fonction.find(params[:id])

    respond_to do |format|
      if @fonction.update_attributes(params[:fonction])
        format.html { redirect_to(@fonction, :notice => 'Fonction was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @fonction.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /fonctions/1
  # DELETE /fonctions/1.xml
  def destroy
    @fonction = Fonction.find(params[:id])
    @fonction.destroy

    respond_to do |format|
      format.html { redirect_to(fonctions_url) }
      format.xml  { head :ok }
    end
  end

end
