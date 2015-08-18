require 'carrierwave/orm/activerecord'

class Animal < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end

