location = Location.create!(
  :name             => "The Farmhouse",
  :street_address   => "1558 Gordon St",
  :extended_address => "",
  :region_id        => Region.where(:name => "California").first,
  :locality         => "Hollywood",
  :postal_code      => "90028",
  :country_id       => Country.where(:name => "United States").first
)

conf = Conf.create!(
  :name        => "Farmhouse Conf",
  :subtitle    => "Backyard Storytelling Under an Avocado Tree",
  :year        => 2012,
  :starts_at   => DateTime.parse("2012-05-05 08:30"),
  :ends_at     => DateTime.parse("2012-05-05 23:00"),
  :location_id => location.id,
  :twitter     => "farmhouse"
)

talk = Talk.create!(
  :conf_id      => conf.id,
  :title        => "Evan Phoenix",
  :subtitle     => "On His Dream Job",
  :description  => "TALK DESCRIPTION: Evan is the creator of Rubinius, an open source Ruby software project. He has a beard and a cat named Fog. He'll be talking about how he managed to land his dream job 4 years ago.",
  :accepted     => true,
  :keynote      => false
)

shane = Person.create!(
  :name       => "Shane Becker",
  :bio        => "Chief resident of The Farmhouse. Organizer of Farmhouse Conf.",
  :image      => "https://twimg0-a.akamaihd.net/profile_images/1266963198/avatar_a_sqaure.jpg",
  :staff      => true,
  :organizer  => true
)

evan = Person.create!(
  :name       => "Evan Phoenix",
  :bio        => "PERSON BIO: Evan is the creator of Rubinius, an open source Ruby software project. He has a beard and a cat named Fog. He'll be talking about how he managed to land his dream job 4 years ago.",
  :image      => "http://farmhouse.la/images/speakers/evan_phoenix/evan_phoenix.jpg",
  :staff      => false,
  :organizer  => false
)

talk.people << evan

website = Website.create!(
  :url  => "http://twitter.com/evanphx",
  :name => "twitter"
)

evan.websites << website

photo_1 = Photo.create!(
  :conf_id        => conf.id,
  :talk_id        => nil,
  :caption        => "Painting the dining room in preparation.",
  :photographer   => "Tj Nelson Jr",
  :url            => "http://farm6.staticflickr.com/5252/5685043441_aef320ec03_b.jpg",
  :canonical_url  => "http://www.flickr.com/photos/veganstraightedge/5685043441/"
)

photo_2 = Photo.create!(
  :conf_id        => conf.id,
  :talk_id        => talk.id,
  :caption        => "Evan Phoenix in mid-talk.",
  :photographer   => "Tj Nelson Jr",
  :url            => "http://www.flickr.com/photos/veganstraightedge/5697216997/",
  :canonical_url  => "http://farm6.staticflickr.com/5224/5697216997_671abb4f0f_b.jpg"
)

