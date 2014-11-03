json.array!(@startup_details) do |startup_detail|
  json.extract! startup_detail, :id, :startup_id, :startup_name, :logo, :name, :surname, :job_title, :email, :phone, :mobile, :short_project_description, :one_line_pitch, :business_summary, :customer_problem, :products_and_services, :target_market, :sales_marketing_strategy, :business_model, :competitors, :competitive_advantage, :management_team, :advisory_board, :revenue_model, :break_even_analysis, :previous_investiments, :use_of_funds, :past_significant_milestones, :exit_strategy, :comparable_exit_markets, :value_proposition, :resources_beyond_capital, :additional_info
  json.url startup_detail_url(startup_detail, format: :json)
end
