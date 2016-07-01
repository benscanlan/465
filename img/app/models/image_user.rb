class ImageUser < ActiveRecord::Base
  belongs_to :image
  belongs_to :user
  has_many :images
end
