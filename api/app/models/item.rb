class Item < ApplicationRecord
  mount_uploader :image, ImageUploader
    belongs_to :color
    belongs_to :design
    belongs_to :gender
    belongs_to :kind
    belongs_to :price
    belongs_to :season
    belongs_to :size
end
