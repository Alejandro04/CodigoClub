class AddUserIdToPagos < ActiveRecord::Migration[5.0]
  def change
    add_reference :pagos, :user, foreign_key: true
  end
end
