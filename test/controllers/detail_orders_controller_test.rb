require "test_helper"

class DetailOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detail_order = detail_orders(:one)
  end

  test "should get index" do
    get detail_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_detail_order_url
    assert_response :success
  end

  test "should create detail_order" do
    assert_difference("DetailOrder.count") do
      post detail_orders_url, params: { detail_order: { note_id: @detail_order.note_id, order_id: @detail_order.order_id, payment_method: @detail_order.payment_method, quantity: @detail_order.quantity, total_price: @detail_order.total_price } }
    end

    assert_redirected_to detail_order_url(DetailOrder.last)
  end

  test "should show detail_order" do
    get detail_order_url(@detail_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_detail_order_url(@detail_order)
    assert_response :success
  end

  test "should update detail_order" do
    patch detail_order_url(@detail_order), params: { detail_order: { note_id: @detail_order.note_id, order_id: @detail_order.order_id, payment_method: @detail_order.payment_method, quantity: @detail_order.quantity, total_price: @detail_order.total_price } }
    assert_redirected_to detail_order_url(@detail_order)
  end

  test "should destroy detail_order" do
    assert_difference("DetailOrder.count", -1) do
      delete detail_order_url(@detail_order)
    end

    assert_redirected_to detail_orders_url
  end
end
