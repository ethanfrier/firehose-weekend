class Pic < ActiveRecord::Base
	mount_uploader :image, ImageUploader

	validates :lesson,  :presence => true, :numericality => {:less_than_or_equal_to => 100}
	validates :emotion, :presence => true
	validates :image,   :presence => true
	validates :learned, :presence => true


end