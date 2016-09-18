json.extract! pedido, :id, :fecha, :cliente_id, :venderor_id, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)