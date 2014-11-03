class AddVideoThumbnailUrlToStartups < ActiveRecord::Migration
  def change
    add_column :startups, :video_thumbnail_url, :string
  end
end
