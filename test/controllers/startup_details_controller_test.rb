require 'test_helper'

class StartupDetailsControllerTest < ActionController::TestCase
  setup do
    @startup_detail = startup_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:startup_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create startup_detail" do
    assert_difference('StartupDetail.count') do
      post :create, startup_detail: { additional_info: @startup_detail.additional_info, advisory_board: @startup_detail.advisory_board, break_even_analysis: @startup_detail.break_even_analysis, business_model: @startup_detail.business_model, business_summary: @startup_detail.business_summary, comparable_exit_markets: @startup_detail.comparable_exit_markets, competitive_advantage: @startup_detail.competitive_advantage, competitors: @startup_detail.competitors, customer_problem: @startup_detail.customer_problem, email: @startup_detail.email, exit_strategy: @startup_detail.exit_strategy, job_title: @startup_detail.job_title, logo: @startup_detail.logo, management_team: @startup_detail.management_team, mobile: @startup_detail.mobile, name: @startup_detail.name, one_line_pitch: @startup_detail.one_line_pitch, past_significant_milestones: @startup_detail.past_significant_milestones, phone: @startup_detail.phone, previous_investiments: @startup_detail.previous_investiments, products_and_services: @startup_detail.products_and_services, resources_beyond_capital: @startup_detail.resources_beyond_capital, revenue_model: @startup_detail.revenue_model, sales_marketing_strategy: @startup_detail.sales_marketing_strategy, short_project_description: @startup_detail.short_project_description, startup_id: @startup_detail.startup_id, startup_name: @startup_detail.startup_name, surname: @startup_detail.surname, target_market: @startup_detail.target_market, use_of_funds: @startup_detail.use_of_funds, value_proposition: @startup_detail.value_proposition }
    end

    assert_redirected_to startup_detail_path(assigns(:startup_detail))
  end

  test "should show startup_detail" do
    get :show, id: @startup_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @startup_detail
    assert_response :success
  end

  test "should update startup_detail" do
    patch :update, id: @startup_detail, startup_detail: { additional_info: @startup_detail.additional_info, advisory_board: @startup_detail.advisory_board, break_even_analysis: @startup_detail.break_even_analysis, business_model: @startup_detail.business_model, business_summary: @startup_detail.business_summary, comparable_exit_markets: @startup_detail.comparable_exit_markets, competitive_advantage: @startup_detail.competitive_advantage, competitors: @startup_detail.competitors, customer_problem: @startup_detail.customer_problem, email: @startup_detail.email, exit_strategy: @startup_detail.exit_strategy, job_title: @startup_detail.job_title, logo: @startup_detail.logo, management_team: @startup_detail.management_team, mobile: @startup_detail.mobile, name: @startup_detail.name, one_line_pitch: @startup_detail.one_line_pitch, past_significant_milestones: @startup_detail.past_significant_milestones, phone: @startup_detail.phone, previous_investiments: @startup_detail.previous_investiments, products_and_services: @startup_detail.products_and_services, resources_beyond_capital: @startup_detail.resources_beyond_capital, revenue_model: @startup_detail.revenue_model, sales_marketing_strategy: @startup_detail.sales_marketing_strategy, short_project_description: @startup_detail.short_project_description, startup_id: @startup_detail.startup_id, startup_name: @startup_detail.startup_name, surname: @startup_detail.surname, target_market: @startup_detail.target_market, use_of_funds: @startup_detail.use_of_funds, value_proposition: @startup_detail.value_proposition }
    assert_redirected_to startup_detail_path(assigns(:startup_detail))
  end

  test "should destroy startup_detail" do
    assert_difference('StartupDetail.count', -1) do
      delete :destroy, id: @startup_detail
    end

    assert_redirected_to startup_details_path
  end
end
