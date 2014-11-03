class AddVideoTypeToStartups < ActiveRecord::Migration
  def change
    add_column :startups, :video_type, :integer
  end
end
