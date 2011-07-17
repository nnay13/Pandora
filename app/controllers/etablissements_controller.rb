class EtablissementsController < ApplicationController
  # GET /etablissements
  # GET /etablissements.xml
  def index
    @etablissements = Etablissement.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @etablissements }
    end
  end

  # GET /etablissements/1
  # GET /etablissements/1.xml
  def show
    @etablissement = Etablissement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @etablissement }
    end
  end

  # GET /etablissements/new
  # GET /etablissements/new.xml
  def new
    @etablissement = Etablissement.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @etablissement }
    end
  end

  # GET /etablissements/1/edit
  def edit
    @etablissement = Etablissement.find(params[:id])
  end

  # POST /etablissements
  # POST /etablissements.xml
  def create
    @etablissement = Etablissement.new(params[:etablissement])

    respond_to do |format|
      if @etablissement.save
        format.html { redirect_to(@etablissement, :notice => 'Etablissement was successfully created.') }
        format.xml  { render :xml => @etablissement, :status => :created, :location => @etablissement }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @etablissement.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /etablissements/1
  # PUT /etablissements/1.xml
  def update
    @etablissement = Etablissement.find(params[:id])

    respond_to do |format|
      if @etablissement.update_attributes(params[:etablissement])
        format.html { redirect_to(@etablissement, :notice => 'Etablissement was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @etablissement.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /etablissements/1
  # DELETE /etablissements/1.xml
  def destroy
    @etablissement = Etablissement.find(params[:id])
    @etablissement.destroy

    respond_to do |format|
      format.html { redirect_to(etablissements_url) }
      format.xml  { head :ok }
    end
  end
end
