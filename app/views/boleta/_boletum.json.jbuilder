json.extract! boletum, :id, :monto, :descuento, :fecha, :pedido_id, :created_at, :updated_at
json.url boletum_url(boletum, format: :json)