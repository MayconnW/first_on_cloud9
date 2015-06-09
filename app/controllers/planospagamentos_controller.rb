class PlanospagamentosController < ApplicationController
  before_action :set_planospagamento, only: [:show, :edit, :update, :destroy]

  # GET /planospagamentos
  # GET /planospagamentos.json
  def index
    @planospagamentos = Planospagamento.all
  end

  # GET /planospagamentos/1
  # GET /planospagamentos/1.json
  def show
  end

  # GET /planospagamentos/new
  def new
    @planospagamento = Planospagamento.new
  end

  # GET /planospagamentos/1/edit
  def edit
  end

  # POST /planospagamentos
  # POST /planospagamentos.json
  def create
    @planospagamento = Planospagamento.new(planospagamento_params)

    respond_to do |format|
      if @planospagamento.save
        format.html { redirect_to @planospagamento, notice: 'Planospagamento was successfully created.' }
        format.json { render :show, status: :created, location: @planospagamento }
      else
        format.html { render :new }
        format.json { render json: @planospagamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /planospagamentos/1
  # PATCH/PUT /planospagamentos/1.json
  def update
    respond_to do |format|
      if @planospagamento.update(planospagamento_params)
        format.html { redirect_to @planospagamento, notice: 'Planospagamento was successfully updated.' }
        format.json { render :show, status: :ok, location: @planospagamento }
      else
        format.html { render :edit }
        format.json { render json: @planospagamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planospagamentos/1
  # DELETE /planospagamentos/1.json
  def destroy
    @planospagamento.destroy
    respond_to do |format|
      format.html { redirect_to planospagamentos_url, notice: 'Planospagamento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planospagamento
      @planospagamento = Planospagamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def planospagamento_params
      params.require(:planospagamento).permit(:descricao, :parcelas, :periodo, :desconto, :acrescimo, :entrada, :vencimentofixo)
    end
end
