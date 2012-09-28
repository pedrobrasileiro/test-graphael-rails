class PesosController < ApplicationController
  # GET /pesos
  # GET /pesos.json
  def index
    @pesos = Peso.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pesos }
    end
  end

  # GET /pesos/1
  # GET /pesos/1.json
  def show
    @peso = Peso.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @peso }
    end
  end

  # GET /pesos/new
  # GET /pesos/new.json
  def new
    @peso = Peso.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @peso }
    end
  end

  # GET /pesos/1/edit
  def edit
    @peso = Peso.find(params[:id])
  end

  # POST /pesos
  # POST /pesos.json
  def create
    @peso = Peso.new(params[:peso])

    respond_to do |format|
      if @peso.save
        format.html { redirect_to @peso, notice: 'Peso was successfully created.' }
        format.json { render json: @peso, status: :created, location: @peso }
      else
        format.html { render action: "new" }
        format.json { render json: @peso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pesos/1
  # PUT /pesos/1.json
  def update
    @peso = Peso.find(params[:id])

    respond_to do |format|
      if @peso.update_attributes(params[:peso])
        format.html { redirect_to @peso, notice: 'Peso was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @peso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pesos/1
  # DELETE /pesos/1.json
  def destroy
    @peso = Peso.find(params[:id])
    @peso.destroy

    respond_to do |format|
      format.html { redirect_to pesos_url }
      format.json { head :no_content }
    end
  end
end
