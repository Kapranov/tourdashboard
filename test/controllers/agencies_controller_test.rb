require 'test_helper'

class AgenciesControllerTest < ActionController::TestCase
  setup do
    @agency = agencies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agencies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agency" do
    assert_difference('Agency.count') do
      post :create, agency: { account: @agency.account, agency_apart: @agency.agency_apart, agency_city: @agency.agency_city, agency_comment: @agency.agency_comment, agency_edrpoy: @agency.agency_edrpoy, agency_email_one: @agency.agency_email_one, agency_email_three: @agency.agency_email_three, agency_email_two: @agency.agency_email_two, agency_house: @agency.agency_house, agency_name: @agency.agency_name, agency_phone_mobile: @agency.agency_phone_mobile, agency_phone_work: @agency.agency_phone_work, agency_pn: @agency.agency_pn, agency_post_index: @agency.agency_post_index, agency_street: @agency.agency_street, agency_web: @agency.agency_web, apart_legal: @agency.apart_legal, bank: @agency.bank, city_legal: @agency.city_legal, contract_from: @agency.contract_from, contract_number: @agency.contract_number, house_legal: @agency.house_legal, mfo: @agency.mfo, post_index_legal: @agency.post_index_legal, street_legal: @agency.street_legal }
    end

    assert_redirected_to agency_path(assigns(:agency))
  end

  test "should show agency" do
    get :show, id: @agency
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agency
    assert_response :success
  end

  test "should update agency" do
    patch :update, id: @agency, agency: { account: @agency.account, agency_apart: @agency.agency_apart, agency_city: @agency.agency_city, agency_comment: @agency.agency_comment, agency_edrpoy: @agency.agency_edrpoy, agency_email_one: @agency.agency_email_one, agency_email_three: @agency.agency_email_three, agency_email_two: @agency.agency_email_two, agency_house: @agency.agency_house, agency_name: @agency.agency_name, agency_phone_mobile: @agency.agency_phone_mobile, agency_phone_work: @agency.agency_phone_work, agency_pn: @agency.agency_pn, agency_post_index: @agency.agency_post_index, agency_street: @agency.agency_street, agency_web: @agency.agency_web, apart_legal: @agency.apart_legal, bank: @agency.bank, city_legal: @agency.city_legal, contract_from: @agency.contract_from, contract_number: @agency.contract_number, house_legal: @agency.house_legal, mfo: @agency.mfo, post_index_legal: @agency.post_index_legal, street_legal: @agency.street_legal }
    assert_redirected_to agency_path(assigns(:agency))
  end

  test "should destroy agency" do
    assert_difference('Agency.count', -1) do
      delete :destroy, id: @agency
    end

    assert_redirected_to agencies_path
  end
end
