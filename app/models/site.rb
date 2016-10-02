class Site < ActiveRecord::Base
  mount_uploader :image_url, ImageUploader
  belongs_to :category
end
