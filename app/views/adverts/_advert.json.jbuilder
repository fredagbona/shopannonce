json.extract! advert, :id, :title, :category, :description, :image, :prix, :localisation, :created_at, :updated_at
json.url advert_url(advert, format: :json)
