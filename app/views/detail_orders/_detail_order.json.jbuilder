json.extract! detail_order, :id, :order_id, :note_id, :quantity, :total_price, :payment_method, :created_at, :updated_at
json.url detail_order_url(detail_order, format: :json)
