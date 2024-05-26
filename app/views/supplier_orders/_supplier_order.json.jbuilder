json.extract! supplier_order, :id, :supplier_id, :note_id, :quantity, :cost, :created_at, :updated_at
json.url supplier_order_url(supplier_order, format: :json)
