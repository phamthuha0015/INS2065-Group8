require "application_system_test_case"

class DetailOrdersTest < ApplicationSystemTestCase
  setup do
    @detail_order = detail_orders(:one)
  end

  test "visiting the index" do
    visit detail_orders_url
    assert_selector "h1", text: "Detail orders"
  end

  test "should create detail order" do
    visit detail_orders_url
    click_on "New detail order"

    fill_in "Note", with: @detail_order.note_id
    fill_in "Order", with: @detail_order.order_id
    fill_in "Payment method", with: @detail_order.payment_method
    fill_in "Quantity", with: @detail_order.quantity
    fill_in "Total price", with: @detail_order.total_price
    click_on "Create Detail order"

    assert_text "Detail order was successfully created"
    click_on "Back"
  end

  test "should update Detail order" do
    visit detail_order_url(@detail_order)
    click_on "Edit this detail order", match: :first

    fill_in "Note", with: @detail_order.note_id
    fill_in "Order", with: @detail_order.order_id
    fill_in "Payment method", with: @detail_order.payment_method
    fill_in "Quantity", with: @detail_order.quantity
    fill_in "Total price", with: @detail_order.total_price
    click_on "Update Detail order"

    assert_text "Detail order was successfully updated"
    click_on "Back"
  end

  test "should destroy Detail order" do
    visit detail_order_url(@detail_order)
    click_on "Destroy this detail order", match: :first

    assert_text "Detail order was successfully destroyed"
  end
end
