class AddUniformedUrlToStartups < ActiveRecord::Migration
  def change
    add_column :startups, :uniformed_url, :string
  end
end
