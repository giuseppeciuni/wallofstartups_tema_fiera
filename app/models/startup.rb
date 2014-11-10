class Startup < ActiveRecord::Base
  has_one  :category
  has_many :startup_details
  validates :video_url, :subcategory, :presence => true
end
