require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { agency_id: @order.agency_id, airclass: @order.airclass, aircross_begin: @order.aircross_begin, aircross_end: @order.aircross_end, airline: @order.airline, airtable: @order.airtable, country: @order.country, debt: @order.debt, debt_currency: @order.debt_currency, hotel_begin: @order.hotel_begin, hotel_city: @order.hotel_city, hotel_class: @order.hotel_class, hotel_class_room: @order.hotel_class_room, hotel_end: @order.hotel_end, hotel_name: @order.hotel_name, hotel_pay: @order.hotel_pay, in_total: @order.in_total, mark: @order.mark, medical_begin: @order.medical_begin, medical_end: @order.medical_end, medical_name: @order.medical_name, night: @order.night, odd: @order.odd, operator: @order.operator, operator_currency: @order.operator_currency, order_day: @order.order_day, paid: @order.paid, paid_currency: @order.paid_currency, payment_currency: @order.payment_currency, payment_tour: @order.payment_tour, sell_currency: @order.sell_currency, sell_tour: @order.sell_tour, service_begin: @order.service_begin, service_end: @order.service_end, service_name: @order.service_name, total_currency: @order.total_currency, tour_day_begin: @order.tour_day_begin, tour_day_end: @order.tour_day_end, tourist_id: @order.tourist_id, visa_begin: @order.visa_begin, visa_end: @order.visa_end, visa_need: @order.visa_need }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    patch :update, id: @order, order: { agency_id: @order.agency_id, airclass: @order.airclass, aircross_begin: @order.aircross_begin, aircross_end: @order.aircross_end, airline: @order.airline, airtable: @order.airtable, country: @order.country, debt: @order.debt, debt_currency: @order.debt_currency, hotel_begin: @order.hotel_begin, hotel_city: @order.hotel_city, hotel_class: @order.hotel_class, hotel_class_room: @order.hotel_class_room, hotel_end: @order.hotel_end, hotel_name: @order.hotel_name, hotel_pay: @order.hotel_pay, in_total: @order.in_total, mark: @order.mark, medical_begin: @order.medical_begin, medical_end: @order.medical_end, medical_name: @order.medical_name, night: @order.night, odd: @order.odd, operator: @order.operator, operator_currency: @order.operator_currency, order_day: @order.order_day, paid: @order.paid, paid_currency: @order.paid_currency, payment_currency: @order.payment_currency, payment_tour: @order.payment_tour, sell_currency: @order.sell_currency, sell_tour: @order.sell_tour, service_begin: @order.service_begin, service_end: @order.service_end, service_name: @order.service_name, total_currency: @order.total_currency, tour_day_begin: @order.tour_day_begin, tour_day_end: @order.tour_day_end, tourist_id: @order.tourist_id, visa_begin: @order.visa_begin, visa_end: @order.visa_end, visa_need: @order.visa_need }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
