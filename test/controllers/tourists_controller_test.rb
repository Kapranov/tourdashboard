require 'test_helper'

class TouristsControllerTest < ActionController::TestCase
  setup do
    @tourist = tourists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tourists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tourist" do
    assert_difference('Tourist.count') do
      post :create, tourist: { add_day_born_five: @tourist.add_day_born_five, add_day_born_four: @tourist.add_day_born_four, add_day_born_one: @tourist.add_day_born_one, add_day_born_three: @tourist.add_day_born_three, add_day_born_two: @tourist.add_day_born_two, add_firstname_en_five: @tourist.add_firstname_en_five, add_firstname_en_four: @tourist.add_firstname_en_four, add_firstname_en_one: @tourist.add_firstname_en_one, add_firstname_en_three: @tourist.add_firstname_en_three, add_firstname_en_two: @tourist.add_firstname_en_two, add_lastname_en_five: @tourist.add_lastname_en_five, add_lastname_en_four: @tourist.add_lastname_en_four, add_lastname_en_one: @tourist.add_lastname_en_one, add_lastname_en_three: @tourist.add_lastname_en_three, add_lastname_en_two: @tourist.add_lastname_en_two, add_passport_five: @tourist.add_passport_five, add_passport_four: @tourist.add_passport_four, add_passport_one: @tourist.add_passport_one, add_passport_three: @tourist.add_passport_three, add_passport_two: @tourist.add_passport_two, add_phone_five: @tourist.add_phone_five, add_phone_four: @tourist.add_phone_four, add_phone_one: @tourist.add_phone_one, add_phone_three: @tourist.add_phone_three, add_phone_two: @tourist.add_phone_two, apartment: @tourist.apartment, city: @tourist.city, client: @tourist.client, client_status: @tourist.client_status, comment: @tourist.comment, country: @tourist.country, day_born: @tourist.day_born, email: @tourist.email, firstname_en: @tourist.firstname_en, firstname_ua: @tourist.firstname_ua, foreign_day_issue: @tourist.foreign_day_issue, foreign_number: @tourist.foreign_number, foreign_suite: @tourist.foreign_suite, gender: @tourist.gender, house: @tourist.house, issued_by: @tourist.issued_by, lastname_en: @tourist.lastname_en, lastname_ua: @tourist.lastname_ua, learned_from: @tourist.learned_from, middlename_ua: @tourist.middlename_ua, msg_mail: @tourist.msg_mail, msg_sms: @tourist.msg_sms, phone_home: @tourist.phone_home, phone_mobile: @tourist.phone_mobile, phone_work: @tourist.phone_work, post_index: @tourist.post_index, skype: @tourist.skype, street: @tourist.street, validity: @tourist.validity }
    end

    assert_redirected_to tourist_path(assigns(:tourist))
  end

  test "should show tourist" do
    get :show, id: @tourist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tourist
    assert_response :success
  end

  test "should update tourist" do
    patch :update, id: @tourist, tourist: { add_day_born_five: @tourist.add_day_born_five, add_day_born_four: @tourist.add_day_born_four, add_day_born_one: @tourist.add_day_born_one, add_day_born_three: @tourist.add_day_born_three, add_day_born_two: @tourist.add_day_born_two, add_firstname_en_five: @tourist.add_firstname_en_five, add_firstname_en_four: @tourist.add_firstname_en_four, add_firstname_en_one: @tourist.add_firstname_en_one, add_firstname_en_three: @tourist.add_firstname_en_three, add_firstname_en_two: @tourist.add_firstname_en_two, add_lastname_en_five: @tourist.add_lastname_en_five, add_lastname_en_four: @tourist.add_lastname_en_four, add_lastname_en_one: @tourist.add_lastname_en_one, add_lastname_en_three: @tourist.add_lastname_en_three, add_lastname_en_two: @tourist.add_lastname_en_two, add_passport_five: @tourist.add_passport_five, add_passport_four: @tourist.add_passport_four, add_passport_one: @tourist.add_passport_one, add_passport_three: @tourist.add_passport_three, add_passport_two: @tourist.add_passport_two, add_phone_five: @tourist.add_phone_five, add_phone_four: @tourist.add_phone_four, add_phone_one: @tourist.add_phone_one, add_phone_three: @tourist.add_phone_three, add_phone_two: @tourist.add_phone_two, apartment: @tourist.apartment, city: @tourist.city, client: @tourist.client, client_status: @tourist.client_status, comment: @tourist.comment, country: @tourist.country, day_born: @tourist.day_born, email: @tourist.email, firstname_en: @tourist.firstname_en, firstname_ua: @tourist.firstname_ua, foreign_day_issue: @tourist.foreign_day_issue, foreign_number: @tourist.foreign_number, foreign_suite: @tourist.foreign_suite, gender: @tourist.gender, house: @tourist.house, issued_by: @tourist.issued_by, lastname_en: @tourist.lastname_en, lastname_ua: @tourist.lastname_ua, learned_from: @tourist.learned_from, middlename_ua: @tourist.middlename_ua, msg_mail: @tourist.msg_mail, msg_sms: @tourist.msg_sms, phone_home: @tourist.phone_home, phone_mobile: @tourist.phone_mobile, phone_work: @tourist.phone_work, post_index: @tourist.post_index, skype: @tourist.skype, street: @tourist.street, validity: @tourist.validity }
    assert_redirected_to tourist_path(assigns(:tourist))
  end

  test "should destroy tourist" do
    assert_difference('Tourist.count', -1) do
      delete :destroy, id: @tourist
    end

    assert_redirected_to tourists_path
  end
end
