class AddAttachmentArchivoToPagos < ActiveRecord::Migration
  def self.up
    change_table :pagos do |t|
      t.attachment :archivo
    end
  end

  def self.down
    remove_attachment :pagos, :archivo
  end
end
