class ChangeColumnToAssetLoss < ActiveRecord::Migration
  def self.up
    add_column :asset_losses, :is_writeoff, :boolean
    add_column :asset_losses, :document_id, :integer
  end

  def self.down
  	remove_column :asset_losses, :is_writeoff
    remove_column :asset_losses, :document_id
  end
end
