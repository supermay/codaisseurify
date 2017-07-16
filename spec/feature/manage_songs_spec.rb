require 'rails_helper'

feature 'Manage songs', js: true do
  scenario 'add a new song' do
    artist = Artist.create!(
    name:"Beatles",
    remote_image_url: "http://res.cloudinary.com/supermay/image/upload/v1499537718/beatles_mjpoxs.jpg",
    country: "UK",
    is_band: true ,
    website: "http://www.thebeatles.com/")

    visit artist_path(artist.id)
    sleep 1
    fill_in 'song_name', with: 'I love coding, I love lying.'
    sleep 1
    page.execute_script("$('button').click()")
    sleep 1
    expect(page).to have_content('I love coding, I love lying.')
  end

  scenario 'delete a song' do
    artist = Artist.create!(
    name:"Beatles",
    remote_image_url: "http://res.cloudinary.com/supermay/image/upload/v1499537718/beatles_mjpoxs.jpg",
    country: "UK",
    is_band: true ,
    website: "http://www.thebeatles.com/")

    song = Song.create!(name:"I hate javaScript",
    youtube_link:"",
    description:"",
    artist:artist)

    visit artist_path(artist.id)
    sleep 1
    page.execute_script("$('#delete').click()")
    sleep 1
    expect(page).not_to have_content('I hate javaScript')

  end
end
