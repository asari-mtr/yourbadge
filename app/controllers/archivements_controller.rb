class ArchivementsController < ApplicationController
  before_action :set_archivement, only: [:show, :edit, :update, :destroy]

  class Medal
      attr_accessor :gold, :silver, :bronze
  end

  # GET /archivements
  # GET /archivements.json
  def index
    @archivements = Archivement.all
  end

  # GET /archivements/1
  # GET /archivements/1.json
  def show
    medal = Medal.new

    medal.gold = @archivement.condition.gold <= @archivement.number
    medal.silver = @archivement.condition.silver <= @archivement.number && !medal.gold
    medal.bronze = @archivement.condition.bronze <= @archivement.number && !medal.silver && !medal.gold

    @medal = medal
  end

  # GET /archivements/new
  def new
    @archivement = Archivement.new
  end

  # GET /archivements/1/edit
  def edit
  end

  # POST /archivements
  # POST /archivements.json
  def create
    @archivement = Archivement.new(archivement_params)

    respond_to do |format|
      if @archivement.save
        format.html { redirect_to @archivement, notice: 'Archivement was successfully created.' }
        format.json { render :show, status: :created, location: @archivement }
      else
        format.html { render :new }
        format.json { render json: @archivement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /archivements/1
  # PATCH/PUT /archivements/1.json
  def update
    respond_to do |format|
      if @archivement.update(archivement_params)
        format.html { redirect_to @archivement, notice: 'Archivement was successfully updated.' }
        format.json { render :show, status: :ok, location: @archivement }
      else
        format.html { render :edit }
        format.json { render json: @archivement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /archivements/1
  # DELETE /archivements/1.json
  def destroy
    @archivement.destroy
    respond_to do |format|
      format.html { redirect_to archivements_url, notice: 'Archivement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_archivement
      @archivement = Archivement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def archivement_params
      params.require(:archivement).permit(:number, :memo)
    end
end
