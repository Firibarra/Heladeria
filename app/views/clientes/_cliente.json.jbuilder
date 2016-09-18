json.extract! cliente, :id, :nombre, :apellido_p, :apellido_m, :rut, :verifi, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)