class RenameBrandIdToBrandItems < ActiveRecord::Migration[6.0]
  def change
    rename_column :items, :brand_id, :brand
  end
end
