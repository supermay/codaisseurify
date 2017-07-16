require 'rails_helper'

feature 'Create a song', js: true do
  scenario 'add a new song' do
    # Point your browser towards the todo path
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
    # Press enter (to submit the form)
    page.execute_script("$('button').click()")
    sleep 1
    # Expect the new task to be displayed in the list of tasks
    expect(page).to have_content('I love coding, I love lying.')
  end
end
