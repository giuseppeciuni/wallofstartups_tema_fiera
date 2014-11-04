class AddCompanyProfileFieldsToStartups < ActiveRecord::Migration
  def change
    add_column :startups, :state, :string
    add_column :startups, :province, :string
    add_column :startups, :country, :string
    add_column :startups, :industry, :string
    add_column :startups, :subcategory, :string
    add_column :startups, :foundedin, :integer
  end
end

