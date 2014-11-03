class AddInTheSpotlightToStartups < ActiveRecord::Migration
  def change
    add_column :startups, :in_the_spotlight, :boolean
  end
end
