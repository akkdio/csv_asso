json.array!(@items) do |item|
  json.extract! item, :id, :name, :category_id, :quantity_id
  json.url item_url(item, format: :json)
end
