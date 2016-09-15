json.extract! add_product, :id, :title, :decription, :link, :product_id, :created_at, :updated_at
json.url add_product_url(add_product, format: :json)