require "application_system_test_case"

class SupplierOrdersTest < ApplicationSystemTestCase
  setup do
    @supplier_order = supplier_orders(:one)
  end

  test "visiting the index" do
    visit supplier_orders_url
    assert_selector "h1", text: "Supplier orders"
  end

  test "should create supplier order" do
    visit supplier_orders_url
    click_on "New supplier order"

    fill_in "Cost", with: @supplier_order.cost
    fill_in "Note", with: @supplier_order.note_id
    fill_in "Quantity", with: @supplier_order.quantity
    fill_in "Supplier", with: @supplier_order.supplier_id
    click_on "Create Supplier order"

    assert_text "Supplier order was successfully created"
    click_on "Back"
  end

  test "should update Supplier order" do
    visit supplier_order_url(@supplier_order)
    click_on "Edit this supplier order", match: :first

    fill_in "Cost", with: @supplier_order.cost
    fill_in "Note", with: @supplier_order.note_id
    fill_in "Quantity", with: @supplier_order.quantity
    fill_in "Supplier", with: @supplier_order.supplier_id
    click_on "Update Supplier order"

    assert_text "Supplier order was successfully updated"
    click_on "Back"
  end

  test "should destroy Supplier order" do
    visit supplier_order_url(@supplier_order)
    click_on "Destroy this supplier order", match: :first

    assert_text "Supplier order was successfully destroyed"
  end
end
