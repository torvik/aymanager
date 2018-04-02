class CreateImprovements < ActiveRecord::Migration[5.1]
  def change
    create_table :improvements do |t|
      t.string :chamado
      t.text :solicitacao
      t.date :data_report
      t.date :data_aprov_req
      t.date :data_envio_provedor
      t.integer :horas_orca
      t.date :data_aprov_orca
      t.date :data_envio_funci
      t.date :data_aprov_funci
      t.date :data_envio_tec
      t.date :data_aprov_tec
      t.date :data_fim_constr
      t.date :data_teste_acei
      t.date :data_prod
      t.integer :avanco
      t.references :segment, foreign_key: true
      t.references :system, foreign_key: true
      t.references :type, foreign_key: true
      t.references :priority, foreign_key: true
      t.references :director, foreign_key: true
      t.references :status, foreign_key: true
      t.references :provider, foreign_key: true
      t.references :area, foreign_key: true
      t.references :requester, foreign_key: true
      t.references :responsible, foreign_key: true

      t.timestamps
    end
  end
end
