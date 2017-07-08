# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artist.delete_all



artist1 = Artist.create!(
name:"Beatles",
remote_image_url: "http://res.cloudinary.com/supermay/image/upload/v1499537718/beatles_mjpoxs.jpg",
country: "UK",
is_band: true ,
website: "http://www.thebeatles.com/")
artist2 = Artist.create!(
name:"the Kinks",
remote_image_url: "http://res.cloudinary.com/supermay/image/upload/v1499537728/thekinks_r0wci1.jpg",
country: "UK",
is_band: true,
website: "http://www.thekinks.info/")
artist3 = Artist.create!(
name:"Bob Dylan",
remote_image_url: "http://res.cloudinary.com/supermay/image/upload/v1499537726/prince_t3nnpv.jpg",
country: "US",
is_band: false,
website: "https://www.bobdylan.com/ ")
artist4 = Artist.create!(
name:"Prince",
remote_image_url: "http://res.cloudinary.com/supermay/image/upload/v1499537726/prince_t3nnpv.jpg",
country: "US",
is_band: false,
website: "http://order.artofficialage.com/eu/")
artist5 = Artist.create!(
name:"Jay Chou",
remote_image_url: "http://res.cloudinary.com/supermay/image/upload/v1499537724/Jay-Chou-singer_u2vkgv.jpg",
country: "China",
is_band: false,
website: "http://www.jvrmusic.com/")
artist6 = Artist.create!(
name:"Big Bang",
remote_image_url: "http://res.cloudinary.com/supermay/image/upload/v1499537719/bigbang_lsvvnl.jpg",
country: "South Korea",
is_band: true,
website: "http://www.ygfamily.com/artist/main.asp?LANGDIV=K&ATYPE=2&ARTIDX=3")


song1 = Song.create!(name:"I am the walrus",
youtube_link:"",
description:"",
artist:artist1)
song2 = Song.create!(name:"Help",
youtube_link:"",
description:"",
artist:artist1)
song3 = Song.create!(name:"Please please me",
youtube_link:"",
description:"",
artist:artist1)
song = Song.create!(name:"Sunny afternoon",
youtube_link:"",
description:"",
artist:artist2)
song = Song.create!(name:"You really got me",
youtube_link:"",
description:"",
artist:artist2)
song = Song.create!(name:"I want you",
youtube_link:"",
description:"",
artist:artist3)
song = Song.create!(name:"Blowin' in the wind",
youtube_link:"",
description:"",
artist:artist3)
song = Song.create!(name:"Raspberry Beret",
youtube_link:"",
description:"",
artist:artist4)
song = Song.create!(name:"Rainbow",
youtube_link:"",
description:"",
artist:artist5)
song = Song.create!(name:"Excuse",
youtube_link:"",
description:"",
artist:artist5)
song = Song.create!(name:"Bang Bang Bang",
youtube_link:"",
description:"",
artist:artist6)
