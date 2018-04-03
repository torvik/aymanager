class HomeController < ApplicationController
  def index
    @totalhoras =  Improvement.all.sum(:horas_orca)

    @totalepts = Improvement.count

    @maioravanco = Improvement.maximum(:avanco)
    @menoravanco = Improvement.minimum(:avanco)

    @maiororcamento = Improvement.maximum(:horas_orca)
    @menororcamento = Improvement.minimum(:horas_orca)

    @status = Status.where(name: "Construção")
    @qtd_horas_const = Improvement.where(status_id: @status ).sum(:horas_orca)

    @status = Status.where(name: "Em Produção")
    @qtd_horas_prod = Improvement.where(status_id: @status).sum(:horas_orca)


    @status = Status.where(name: "Definindo escopo")
    @total_ept_defesc = Improvement.where(status_id: @status).count

    @status = Status.where(name: "Aprovação do orçamento")
    @total_ept_aprov = Improvement.where(status_id: @status).count

    @status = Status.where(name: "Valorando")
    @total_ept_valor = Improvement.where(status_id:  @status).count
    
    @status = Status.where(name: "Construção")
    @total_ept_const = Improvement.where(status_id: @status).count
    
    @status = Status.where(name: "Entregue para testes")
    @total_ept_teste = Improvement.where(status_id: @status).count
    
    @status = Status.where(name: "Aguardando análise")
    @total_ept_aguard = Improvement.where(status_id: @status).count
    
    @status = Status.where(name: "Em Produção")
    @total_ept_prod = Improvement.where(status_id: @status).count


  end
end
