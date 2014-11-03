class CreateStartupDetails < ActiveRecord::Migration
  def change
    create_table :startup_details do |t|
      t.integer :startup_id
      t.string :startup_name
      t.string :logo
      t.string :name
      t.string :surname
      t.string :job_title
      t.string :email
      t.string :phone
      t.string :mobile
      t.text :short_project_description
      t.text :one_line_pitch
      t.text :business_summary
      t.text :customer_problem
      t.text :products_and_services
      t.text :target_market
      t.text :sales_marketing_strategy
      t.text :business_model
      t.text :competitors
      t.text :competitive_advantage
      t.text :management_team
      t.text :advisory_board
      t.text :revenue_model
      t.text :break_even_analysis
      t.text :previous_investiments
      t.text :use_of_funds
      t.text :past_significant_milestones
      t.text :exit_strategy
      t.text :comparable_exit_markets
      t.text :value_proposition
      t.text :resources_beyond_capital
      t.text :additional_info

      t.timestamps
    end
  end
end
