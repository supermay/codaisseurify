json.extract! song, :name, :description, :youtube_link, :updated_at
json.url song_url(song, format: :json)
