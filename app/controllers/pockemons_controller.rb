class PockemonsController < ApplicationController
  before_action :set_pockemon, only: [:show, :edit, :update, :destroy]

  # GET /pockemons
  # GET /pockemons.json
  def index
    @pockemons = Pockemon.all
  end

  # GET /pockemons/1
  # GET /pockemons/1.json
  def show
  end

  # GET /pockemons/new
  def new
    @pockemon = Pockemon.new
  end

  # GET /pockemons/1/edit
  def edit
  end

  # POST /pockemons
  # POST /pockemons.json
  def create
    @pockemon = Pockemon.new(pockemon_params)

    respond_to do |format|
      if @pockemon.save
        format.html { redirect_to @pockemon, notice: 'Pockemon was successfully created.' }
        format.json { render :show, status: :created, location: @pockemon }
      else
        format.html { render :new }
        format.json { render json: @pockemon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pockemons/1
  # PATCH/PUT /pockemons/1.json
  def update
    respond_to do |format|
      if @pockemon.update(pockemon_params)
        format.html { redirect_to @pockemon, notice: 'Pockemon was successfully updated.' }
        format.json { render :show, status: :ok, location: @pockemon }
      else
        format.html { render :edit }
        format.json { render json: @pockemon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pockemons/1
  # DELETE /pockemons/1.json
  def destroy
    @pockemon.destroy
    respond_to do |format|
      format.html { redirect_to pockemons_url, notice: 'Pockemon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pockemon
      @pockemon = Pockemon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pockemon_params
      params.require(:pockemon).permit(:name, :desciption, :user_id)
    end
end
