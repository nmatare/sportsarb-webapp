class AddLastUploadToBios < ActiveRecord::Migration[5.0]
  def change
    add_column :bios, :last_upload, :string
  end
end
