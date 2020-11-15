class ChangeDataBrandToItem < ActiveRecord::Migration[6.0]
  def change
    change_column :items, :brand_id, :string
  end
end
