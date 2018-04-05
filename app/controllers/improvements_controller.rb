class ImprovementsController < ApplicationController
  before_action :set_improvement, only: [:show, :edit, :update, :destroy]

  # GET /improvements
  # GET /improvements.json
  def index
    @improvements = Improvement.all.order("created_at DESC")
  end

  # GET /improvements/1
  # GET /improvements/1.json
  def show
  end

  # GET /improvements/new
  def new
     @improvement = current_user.improvements.build
  end

  # GET /improvements/1/edit
  def edit
  end

  # POST /improvements
  # POST /improvements.json
  def create
    @improvement = current_user.improvements.build(improvement_params)

    respond_to do |format|
      if @improvement.save
        format.html { redirect_to @improvement, notice: 'Improvement was successfully created.' }
        format.json { render :show, status: :created, location: @improvement }
      else
        format.html { render :new }
        format.json { render json: @improvement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /improvements/1
  # PATCH/PUT /improvements/1.json
  def update
    respond_to do |format|
      if @improvement.update(improvement_params)
        format.html { redirect_to @improvement, notice: 'Improvement was successfully updated.' }
        format.json { render :show, status: :ok, location: @improvement }
      else
        format.html { render :edit }
        format.json { render json: @improvement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /improvements/1
  # DELETE /improvements/1.json
  def destroy
    @improvement.destroy
    respond_to do |format|
      format.html { redirect_to improvements_url, notice: 'Improvement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_improvement
      @improvement = Improvement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def improvement_params
      params.require(:improvement).permit(:chamado, :solicitacao, :data_report, :data_aprov_req, :data_envio_provedor, :horas_orca, :data_aprov_orca, :data_envio_funci, :data_aprov_funci, :data_envio_tec, :data_aprov_tec, :data_fim_constr, :data_teste_acei, :data_prod, :avanco, :segment_id, :system_id, :type_id, :priority_id, :director_id, :status_id, :provider_id, :area_id, :requester_id, :responsible_id)
    end
end
