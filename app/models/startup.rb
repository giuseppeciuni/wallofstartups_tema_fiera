class Startup < ActiveRecord::Base
  has_many :startup_details
  validates :video_url, :presence => true
end
