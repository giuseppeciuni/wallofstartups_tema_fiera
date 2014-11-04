class AddCompanyProfileCityToStartups < ActiveRecord::Migration
  def change
    add_column :startups, :city, :string
  end
end

