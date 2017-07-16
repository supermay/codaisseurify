json.extract! artist, :id, :name, :country, :is_band, :website, :songs, :updated_at
json.url artist_url(artist, format: :json)
