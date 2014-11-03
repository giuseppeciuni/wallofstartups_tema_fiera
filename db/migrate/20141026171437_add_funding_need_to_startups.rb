class AddFundingNeedToStartups < ActiveRecord::Migration
  def change
    add_column :startups, :funding_need, :decimal
  end
end
