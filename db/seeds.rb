location = Location.create!(
  :name             => "The Farmhouse",
  :street_address   => "1558 Gordon St",
  :extended_address => "",
  :region_id        => Region.where(:name => "California").first,
  :locality         => "Hollywood",
  :postal_code      => "90028",
  :country_id       => Country.where(:name => "United States").first
)

farmhouse_conf_1 = Conf.create!(
  :name             => "Farmhouse Conf 1",
  :subtitle         => "Backyard Storytelling Under an Avocado Tree",
  :year             => 2011,
  :starts_at        => DateTime.parse("2011-05-07 08:30"),
  :ends_at          => DateTime.parse("2011-05-07 23:00"),
  :location_id      => location.id,
  :twitter          => "farmhouseconf",
  :registration_url => "https://farmhouse.eventwax.com/farmhouse-conf-1/register/"
)


people = [
  ["Evan Phoenix", "Evan is the creator of Rubinius, an open source Ruby software project. He has a beard and a cat named Fog. He'll be talking about how he managed to land his dream job 4 years ago."],
  ["Leah Silber", "Leah is one of the organizers of JRuby Conf, jQuery Conf and GoGaRuCo. She'll be talking about organizing the nerds... Nerd Herding, if you will."],
  ["Sean Bonner", "Sean Bonner is a Los Angeles-based entrepreneur, journalist, activist and enthusiast. Bonner has co-founded hackerspaces and blog networks, an art gallery, design firm and record label. He is a board member of Coffee Common, works closely with Neoteny Labs in Singapore and Tokyo and has been a regular contributor to BoingBoing. He's one of the co-founders of Safecast (previously RDTN).\n\nSean will be talking about Safecast (previously known as RDTN), a group he co-founded in March after the 3/11 earthquake in Japan and resulting problems at the Fukushima nuclear reactor showed a vast lack of radiation data available to the public that wasn't coming from a corporation or activist group. Safecast aims to create a global open data network of sensors and is currently focused on Japan. Sean has just returned from Tokyo and will be talking about their efforts there."],
  ["Micki Krimmel", "Micki Krimmel (aka Mickipedia) is the founder of NeighborGoods.net, a community where you can save money and resources by sharing stuff with your neighbors. Why buy when you can borrow? \n\nMicki has been building online communities for almost a decade. She founded the interactive department at Participant Media, where she created the company’s first online community and led the social media efforts for Al Gore’s An Inconvenient Truth. She also ran the community department at Revver.com and has provided product and social media consulting for numerous startups and media companies. \n\nMicki blogs for WorldChanging, The Huffington Post, Shareable.net and Mickipedia.com. She is also an all-star roller derby skater with the Los Angeles Derby Dolls."],
  ["Tj Nelson Jr", "Tj is the best photographer and videographer that Shane knows. Aside from speaking at the conference, he'll also be photographing it. Tj used to work for Apple Stores at the Creative Bar giving lessons on the various Apple iLife apps. One time whilst on the Cupertino Apple campus, he gave the worst product demo of his life to Steve Jobs' wife and others. That experience changed him forever and he'll tell you how."],
  ["Sarah Mei", "Sarah is a Ruby / Rails developer at Pivotal Labs and is a regular contributor to Diaspora. She also helps organize RailsBridge in San Francisco, CA. She wears a bright pink dress on Earth Day and owns a skirt with a Regular Expression reference printed upside down on it (so it's readable to her). She'll tell the story of how being a programmer has made her into an extrovert."],
  ["Eli Duke", "I like to think that I'm the kind of person who's not defined by my job. I've done this successfully as a High School Substitute Teacher, an Apartment Maintenance Guy, a Pizza Delivery Driver, a Kirby Vacuum Salesman and a Nintendo Game Tester. That was just how I made money and nothing else, but the last 4 years it's been especially difficult, spending half my time living and working in Antarctica.\n\nDid you know that people live in Antarctica? They have jobs and go the bar after work and play music and drive cars and celebrate Halloween, Thanksgiving, Christmas and New Years. They go hiking and do yoga. They sorta live a normal life, but at the same time they sorta don't. My talk will explain just some of this crazy life."],
  ["Meghann Millard", "Meghann Millard is a partner at Unspace Interactive, a web consultancy based in Toronto, Canada. She excels at facilitating anything, being smug, and Lorum Ipsuming her bios. She's a Pragmatic Sorcerer and Former Transformer. Or whatever. \n\nShe'll talk about the parallels of our tech niche to the music industry in its thriving days of yore, but why that doesn't have to suck, in the Hunter S. Thompson sense. She has lots of stories about how the Unspace gang (90% music industry expatriates) have used their collective experience there to create awesome stuff and engage and entertain people within our own community. There are some cautionary (and unintentionally funny) tales of woe in there too."],
  ["Aaron Patterson", "Aaron Patterson is one of the nicest and funniest people that Shane knows. His handle on the internets is Tenderlove, his website is tenderlovemaking.com. He takes ridiculous photos of himself for his slides when he gives presentations at conferences — in spandex, bikinis, with wigs, in hats, smoking a pipe, in baseball gear... He'll be talking about a secret topic. But trust me, he always brings it."],
  ["Suzan Bond", "Suzan is a community builder, uber people person and curator of information. Known for her ability to building scalable organization, she has created 2 departments, 2 non-profits and 2 companies and is currently the Chief Rainmaker for SwagLove. A former executive coach and organizational and business strategist, she has worked with renowned companies such as Accenture, Deloitte, Kellogg and Kraft among others, where she developed her ideas about personal and business effectiveness. She's spoken all over the US and internationally, including at Ignite Boulder, the largest Ignite in the word. She's written a book about intuition and is currently in the midst of a writing frenzy that includes a blog, a memoir and The Art of Self Sourcing, a guide on decision making in a digital world. She lives in Boulder."]
]

people.each do |talk|
  Talk.create!(
    :conf_id      => farmhouse_conf_1.id,
    :title        => talk.first,
    :subtitle     => "",
    :description  => talk.last,
    :accepted     => true,
    :keynote      => false
  )
end

shane = Person.create!(
  :name       => "Shane Becker",
  :bio        => "Chief resident of The Farmhouse. Organizer of Farmhouse Conf.",
  :image      => "https://twimg0-a.akamaihd.net/profile_images/1266963198/avatar_a_sqaure.jpg",
  :staff      => true,
  :organizer  => true
)

people.each do |person|
  slug = person.first.downcase.gsub(/\s/, "_")

  Person.create!(
    :name       => person.first,
    :bio        => person.last,
    :image      => "http://farmhouse.la/images/speakers/#{slug}/#{slug}.jpg",
    :staff      => false,
    :organizer  => false
  )
end


Talk.all.each do |talk|
  person = Person.where(:name => talk.title).first

  talk.people << person
end





farmhouse_conf_2 = Conf.create!(
  :name             => "Farmhouse Conf 2",
  :subtitle         => "Backyard Storytelling Under an Avocado Tree. Again.",
  :year             => 2012,
  :starts_at        => DateTime.parse("2012-05-05 08:30"),
  :ends_at          => DateTime.parse("2012-05-05 23:00"),
  :location_id      => location.id,
  :twitter          => "farmhouseconf",
  :registration_url => "https://farmhouse.eventwax.com/farmhouse-conf-2/register/"
)



__END__



website = Website.create!(
  :url  => "http://twitter.com/evanphx",
  :name => "twitter"
)

evan.websites << website

photo_1 = Photo.create!(
  :conf_id        => farmhouse_conf_1.id,
  :talk_id        => nil,
  :caption        => "Painting the dining room in preparation.",
  :photographer   => "Tj Nelson Jr",
  :url            => "http://farm6.staticflickr.com/5252/5685043441_aef320ec03_b.jpg",
  :canonical_url  => "http://www.flickr.com/photos/veganstraightedge/5685043441/"
)

photo_2 = Photo.create!(
  :conf_id        => farmhouse_conf_1.id,
  :talk_id        => talk.id,
  :caption        => "Evan Phoenix in mid-talk.",
  :photographer   => "Tj Nelson Jr",
  :url            => "http://www.flickr.com/photos/veganstraightedge/5697216997/",
  :canonical_url  => "http://farm6.staticflickr.com/5224/5697216997_671abb4f0f_b.jpg"
)

