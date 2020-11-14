class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :image
      t.integer :user_id
      t.integer :gender_id
      t.integer :brand_id
      t.integer :color_id
      t.integer :kind_id
      t.integer :season_id
      t.integer :size_id
      t.integer :design_id
      t.integer :price_id

      t.timestamps
    end
  end
end
