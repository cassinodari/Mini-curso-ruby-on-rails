json.extract! register_product, :id, :nome, :id_seq, :endereco, :preco, :email, :created_at, :updated_at
json.url register_product_url(register_product, format: :json)
