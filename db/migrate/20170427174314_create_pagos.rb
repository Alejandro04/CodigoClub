class CreatePagos < ActiveRecord::Migration[5.0]
  def change
    create_table :pagos do |t|
      t.date :fecha_compra
      t.string :beneficiario
      t.string :descripcion
      t.string :monto
      t.string :categoria
      t.string :status

      t.timestamps
    end
  end
end
