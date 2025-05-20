class EchipamentsController < ApplicationController
  before_action :set_echipament, only: %i[ show edit update destroy ]

  # GET /echipaments or /echipaments.json
  def index
    @echipaments = Echipament.all
  end

  # GET /echipaments/1 or /echipaments/1.json
  def show
  end

  # GET /echipaments/new
  def new
    @echipament = Echipament.new
  end

  # GET /echipaments/1/edit
  def edit
  end

  # POST /echipaments or /echipaments.json
  def create
    @echipament = Echipament.new(echipament_params)

    respond_to do |format|
      if @echipament.save
        format.html { redirect_to @echipament, notice: "Echipament was successfully created." }
        format.json { render :show, status: :created, location: @echipament }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @echipament.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /echipaments/1 or /echipaments/1.json
  def update
    respond_to do |format|
      if @echipament.update(echipament_params)
        format.html { redirect_to @echipament, notice: "Echipament was successfully updated." }
        format.json { render :show, status: :ok, location: @echipament }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @echipament.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /echipaments/1 or /echipaments/1.json
  def destroy
    @echipament.destroy!

    respond_to do |format|
      format.html { redirect_to echipaments_path, status: :see_other, notice: "Echipament was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_echipament
      @echipament = Echipament.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def echipament_params
      params.expect(echipament: [ :nume, :descriere ])
    end
end
