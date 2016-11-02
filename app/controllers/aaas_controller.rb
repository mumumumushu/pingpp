class AaasController < ApplicationController
  before_action :set_aaa, only: [:show, :edit, :update, :destroy]

  # GET /aaas
  # GET /aaas.json
  def index
    @aaas = Aaa.all
  end

  # GET /aaas/1
  # GET /aaas/1.json
  def show
  end

  # GET /aaas/new
  def new
    @aaa = Aaa.new
    a = Pingpp::Charge.create(
                          :order_no  => "12345678911",
                          :app       => { :id => APP_ID },
                          :channel   => 'wx',
                          :amount    => 100,
                          :client_ip => "127.0.0.1",
                          :currency  => "cny",
                          :subject   => "Your Subject",
                          :body      => "Your Body"
                        )
    @aaa.test_id = a["id"]
    @aaa.save
    puts aa unless @aaa.save


  end

  def get_log
    @aaa = Aaa.new
    @aaa.test_id = params[:id]
    @aaa.save
  end


  # GET /aaas/1/edit
  def edit
  end

  # POST /aaas
  # POST /aaas.json
  def create
    @aaa = Aaa.new(aaa_params)

    respond_to do |format|
      if @aaa.save
        format.html { redirect_to @aaa, notice: 'Aaa was successfully created.' }
        format.json { render :show, status: :created, location: @aaa }
      else
        format.html { render :new }
        format.json { render json: @aaa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aaas/1
  # PATCH/PUT /aaas/1.json
  def update
    respond_to do |format|
      if @aaa.update(aaa_params)
        format.html { redirect_to @aaa, notice: 'Aaa was successfully updated.' }
        format.json { render :show, status: :ok, location: @aaa }
      else
        format.html { render :edit }
        format.json { render json: @aaa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aaas/1
  # DELETE /aaas/1.json
  def destroy
    @aaa.destroy
    respond_to do |format|
      format.html { redirect_to aaas_url, notice: 'Aaa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aaa
      @aaa = Aaa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aaa_params
      params.fetch(:aaa, {})
    end
end
