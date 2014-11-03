class AddCategoryToStartups < ActiveRecord::Migration
  def change
    add_column :startups, :category, :string
  end
end
