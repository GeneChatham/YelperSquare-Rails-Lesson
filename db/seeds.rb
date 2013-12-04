# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.destroy_all

restaurants = {
  "homeslice" => {
    name: 'Home Slice Pizza',
    hours: '11am -11pm',
    cuisine: 'Pizza',
    address: '1415 S Congress Ave, Austin, TX 78704',
    photo_url: 'http://4.bp.blogspot.com/_Uez2_cw6cYA/TSooy_EwtpI/AAAAAAAADyc/Kf1v4BD-kVk/s1600/01-FH050005.png',
    average_rating: 4
  },
  "gourdoughs" => {
    name: "Gourdough's",
    hours: '10am - midnight',
    cuisine: 'Donuts',
    address: '1503 S 1st, Austin, TX 78704',
    photo_url: 'http://littleaustinite.com/wp-content/uploads/2010/11/gourdoughstrailer.jpg',
    average_rating: 5
  },
    "mellizoz" => {
    name: "Mellizoz Tacos",
    hours: '7am - 8pm',
    cuisine: 'Mexican - tacos',
    address: '1503 S 1st, Austin, TX 78704',
    photo_url: 'http://s3-media3.ak.yelpcdn.com/bphoto/MNR3-zzXFCiarQeiVy3BRw/l.jpg',
    average_rating: 4
  }
}


restaurants.each do |key, restaurant|
  Restaurant.create(restaurant)
end