json.extract! aplicacion, :id, :nombre, :descripcion, :created_at, :updated_at
json.url aplicacion_url(aplicacion, format: :json)
