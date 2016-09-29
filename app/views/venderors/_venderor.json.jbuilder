json.extract! venderor, :id, :nombre, :apellido_p, :apellido_m, :rut, :verifi, :created_at, :updated_at, :clave
json.url venderor_url(venderor, format: :json)
