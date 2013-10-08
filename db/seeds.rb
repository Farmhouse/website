# memberships
desk = Membership.create!(
  :name        => "Desk",
  :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  :price       => 25,
  :slug        => "desk"
)

barn = Membership.create!(
  :name        => "Barn",
  :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  :price       => 25,
  :slug        => "barn"
)

# desk = Membership.create!(
#   :name        => "Van",
#   :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
#   :price       => 50,
#   :slug        => "van"
# )




# the farmhouse location
location = Location.create!(
  :name             => "The Farmhouse",
  :street_address   => "1558 Gordon St",
  :extended_address => "",
  :region_id        => Region.where(:name => "California").first.id,
  :locality         => "Hollywood",
  :postal_code      => "90028",
  :country_id       => Country.where(:name => "United States").first.id
)


# farmhouse conf 1, 2011
farmhouse_conf_1    = Conf.create!(
  :name             => "Farmhouse Conf 1",
  :subtitle         => "Backyard Storytelling Under an Avocado Tree",
  :year             => 2011,
  :starts_at        => DateTime.parse("2011-05-07 08:30"),
  :ends_at          => DateTime.parse("2011-05-07 23:00"),
  :location_id      => location.id,
  :twitter          => "farmhouse",
  :theme            => "Dreams",
  :registration_url => "https://farmhouse.eventwax.com/farmhouse-conf-1/register/"
)

# fhc1 speakers
people_1 = [
  ["Evan Phoenix",    "<p>Evan is the creator of Rubinius, an open source Ruby software project. He has a beard and a cat named Fog. He'll be talking about how he managed to land his dream job 4 years ago.</p>"],
  ["Leah Silber",     "<p>Leah is one of the organizers of JRuby Conf, jQuery Conf and GoGaRuCo. She'll be talking about organizing the nerds... Nerd Herding, if you will.</p>"],
  ["Sean Bonner",     "<p>Sean Bonner is a Los Angeles-based entrepreneur, journalist, activist and enthusiast. Bonner has co-founded hackerspaces and blog networks, an art gallery, design firm and record label. He is a board member of Coffee Common, works closely with Neoteny Labs in Singapore and Tokyo and has been a regular contributor to BoingBoing. He's one of the co-founders of Safecast (previously RDTN).</p><p>Sean will be talking about Safecast (previously known as RDTN), a group he co-founded in March after the 3/11 earthquake in Japan and resulting problems at the Fukushima nuclear reactor showed a vast lack of radiation data available to the public that wasn't coming from a corporation or activist group. Safecast aims to create a global open data network of sensors and is currently focused on Japan. Sean has just returned from Tokyo and will be talking about their efforts there.</p>"],
  ["Micki Krimmel",   "<p>Micki Krimmel (aka Mickipedia) is the founder of NeighborGoods.net, a community where you can save money and resources by sharing stuff with your neighbors. Why buy when you can borrow? </p><p>Micki has been building online communities for almost a decade. She founded the interactive department at Participant Media, where she created the company's first online community and led the social media efforts for Al Gore's An Inconvenient Truth. She also ran the community department at Revver.com and has provided product and social media consulting for numerous startups and media companies. </p><p>Micki blogs for WorldChanging, The Huffington Post, Shareable.net and Mickipedia.com. She is also an all-star roller derby skater with the Los Angeles Derby Dolls.</p>"],
  ["Tj Nelson Jr",    "<p>Tj is the best photographer and videographer that Shane knows. Aside from speaking at the conference, he'll also be photographing it. Tj used to work for Apple Stores at the Creative Bar giving lessons on the various Apple iLife apps. One time whilst on the Cupertino Apple campus, he gave the worst product demo of his life to Steve Jobs' wife and others. That experience changed him forever and he'll tell you how.</p>"],
  ["Sarah Mei",       "<p>Sarah is a Ruby / Rails developer at Pivotal Labs and is a regular contributor to Diaspora. She also helps organize RailsBridge in San Francisco, CA. She wears a bright pink dress on Earth Day and owns a skirt with a Regular Expression reference printed upside down on it (so it's readable to her). She'll tell the story of how being a programmer has made her into an extrovert.</p>"],
  ["Eli Duke",        "<p>I like to think that I'm the kind of person who's not defined by my job. I've done this successfully as a High School Substitute Teacher, an Apartment Maintenance Guy, a Pizza Delivery Driver, a Kirby Vacuum Salesman and a Nintendo Game Tester. That was just how I made money and nothing else, but the last 4 years it's been especially difficult, spending half my time living and working in Antarctica.</p><p>Did you know that people live in Antarctica? They have jobs and go the bar after work and play music and drive cars and celebrate Halloween, Thanksgiving, Christmas and New Years. They go hiking and do yoga. They sorta live a normal life, but at the same time they sorta don't. My talk will explain just some of this crazy life.</p>"],
  ["Meghann Millard", "<p>Meghann Millard is a partner at Unspace Interactive, a web consultancy based in Toronto, Canada. She excels at facilitating anything, being smug, and Lorum Ipsuming her bios. She's a Pragmatic Sorcerer and Former Transformer. Or whatever. </p><p>She'll talk about the parallels of our tech niche to the music industry in its thriving days of yore, but why that doesn't have to suck, in the Hunter S. Thompson sense. She has lots of stories about how the Unspace gang (90% music industry expatriates) have used their collective experience there to create awesome stuff and engage and entertain people within our own community. There are some cautionary (and unintentionally funny) tales of woe in there too.</p>"],
  ["Aaron Patterson", "<p>Aaron Patterson is one of the nicest and funniest people that Shane knows. His handle on the internets is Tenderlove, his website is tenderlovemaking.com. He takes ridiculous photos of himself for his slides when he gives presentations at conferences - in spandex, bikinis, with wigs, in hats, smoking a pipe, in baseball gear... He'll be talking about a secret topic. But trust me, he always brings it.</p>"],
  ["Suzan Bond",      "<p>Suzan is a community builder, uber people person and curator of information. Known for her ability to building scalable organization, she has created 2 departments, 2 non-profits and 2 companies and is currently the Chief Rainmaker for SwagLove. A former executive coach and organizational and business strategist, she has worked with renowned companies such as Accenture, Deloitte, Kellogg and Kraft among others, where she developed her ideas about personal and business effectiveness. She's spoken all over the US and internationally, including at Ignite Boulder, the largest Ignite in the word. She's written a book about intuition and is currently in the midst of a writing frenzy that includes a blog, a memoir and The Art of Self Sourcing, a guide on decision making in a digital world. She lives in Boulder.</p>"]
]

# fhc1 videos
videos = [
  ["http://cdn.confreaks.com/system/assets/datas/1419/original/535-farmhouseconf-evan-phoenix-small.mp4",        "http://confreaks.com/videos/535-farmhouseconf-evan-phoenix",        "http://confreaks.com/system/videos/images/535/preview/vlcsnap-2011-05-10-12h19m27s159.png"],
  ["http://cdn.confreaks.com/system/assets/datas/1413/original/532-farmhouseconf-leah-silber-small.mp4",         "http://confreaks.com/videos/532-farmhouseconf-leah-silber",         "http://confreaks.com/system/videos/images/532/preview/vlcsnap-2011-05-10-11h49m01s77.png"],
  ["http://cdn.confreaks.com/system/assets/datas/1393/original/528-farmhouseconf-sean-bonner-small.mp4",         "http://confreaks.com/videos/528-farmhouseconf-sean-bonner",         "http://confreaks.com/system/videos/images/528/preview/vlcsnap-2011-05-10-01h24m44s30.png"],
  ["http://cdn.confreaks.com/system/assets/datas/1408/original/533-farmhouseconf-micki-krimmel-small.mp4",       "http://confreaks.com/videos/533-farmhouseconf-micki-krimmel",       "http://confreaks.com/system/videos/images/533/preview/vlcsnap-2011-05-10-11h51m39s105.png"],
  ["http://cdn.confreaks.com/system/assets/datas/1396/original/530-farmhouseconf-tj-nelson-jr-small.mp4",        "http://confreaks.com/videos/530-farmhouseconf-tj-nelson-jr",        "http://confreaks.com/system/videos/images/530/preview/530-farmhouseconf-tj-nelson-jr-thumb_0000.png"],
  ["http://cdn.confreaks.com/system/assets/datas/1405/original/536-farmhouseconf-sarah-mei-small.mp4",           "http://confreaks.com/videos/536-farmhouseconf-sarah-mei",           "http://confreaks.com/system/videos/images/536/preview/vlcsnap-2011-05-10-12h22m12s19.png"],
  ["http://cdn.confreaks.com/system/assets/datas/1430/original/539-farmhouseconf-eli-duke-small.mp4",            "http://confreaks.com/videos/539-farmhouseconf-eli-duke",            "http://confreaks.com/system/videos/images/539/preview/vlcsnap-2011-05-10-12h19m52s150.png"],
  ["http://cdn.confreaks.com/system/assets/datas/1402/original/534-farmhouseconf-meghann-millard-small.mp4",     "http://confreaks.com/videos/534-farmhouseconf-meghann-millard",     "http://confreaks.com/system/videos/images/534/preview/vlcsnap-2011-05-10-11h52m05s105.png"],
  ["http://cdn.confreaks.com/system/assets/datas/1411/original/538-farmhouseconf-tmi-with-tenderlove-small.mp4", "http://confreaks.com/videos/538-farmhouseconf-tmi-with-tenderlove", "http://confreaks.com/system/videos/images/538/preview/vlcsnap-2011-05-10-12h23m02s9.png"],
  ["http://cdn.confreaks.com/system/assets/datas/1399/original/531-farmhouseconf-suzan-bond-small.mp4",          "http://confreaks.com/videos/531-farmhouseconf-suzan-bond",          "http://confreaks.com/system/videos/images/531/preview/vlcsnap-2011-05-10-01h39m10s197.png"]
]

# fhc1 people + talks
people_1.each_with_index do |person, index|
  talk = Talk.create!(
    :conf_id      => farmhouse_conf_1.id,
    :title        => person.first,
    :subtitle     => "",
    :description  => ""
  )

  Video.create!(
    :conf_id          => farmhouse_conf_1.id,
    :talk_id          => talk.id,
    :caption          => "",
    :videographer     => "Coby Randquist",
    :mp4              => videos[index].first,
    :canonical_url    => videos[index][1],
    :poster_frame_url => videos[index].last
  )

  slug = person.first.downcase.gsub(/\s/, "_")

  Person.create!(
    :name       => person.first,
    :bio        => person.last,
    :image      => "http://farmhouse.la/images/speakers/#{slug}/#{slug}.jpg",
    :staff      => false,
    :organizer  => false
  )
end


# me
shane = Person.create!(
  :name       => "Shane Becker",
  :bio        => "Chief Resident of The Farmhouse. Organizer of Farmhouse Conf.",
  :image      => "https://twimg0-a.akamaihd.net/profile_images/1266963198/avatar_a_sqaure.jpg",
  :staff      => true,
  :organizer  => true
)

# fhc1, adding people to talks
Talk.all.each do |talk|
  person = Person.where(:name => talk.title).first
  talk.people << person

  talk.update_attributes!(:title => "")
end




# farmhouse conf 2, 2012
farmhouse_conf_2 = Conf.create!(
  :name             => "Farmhouse Conf 2",
  :subtitle         => "<b>Mapping</b> Stories in a Backyard Under an Avocado Tree",
  :year             => 2012,
  :starts_at        => DateTime.parse("2012-05-05 08:30"),
  :ends_at          => DateTime.parse("2012-05-05 23:00"),
  :location_id      => location.id,
  :twitter          => "farmhouse",
  :theme            => "Mapping",
  :registration_url => "https://farmhouse.eventwax.com/farmhouse-conf-2/register/"
)

# farmhouse conf 2 speakers
people_2 = [
  {
    :name => "Tara Brown",
    :bio  => "
      <p>Tara Tiger Brown has designed, developed and led innovative software development projects for 15 years. Her primary focus has always been on excellent user experience, anywhere data access, online communities, and open platforms.</p>

      <p>She is currently immersed in a startup she co-founded, <a href='http://teachmestuff.net/' title='Teach Me Stuff'>Teach Me Stuff</a>, a digital media learning (DML) platform that matches interest-driven learners with mentors and coaches.</p>

      <p>Previously she co-founded Noot, a real-time interactive mobile sports game and before that worked at Shazam, Topspin and Microsoft.</p>

      <p>She&rsquo;s passionate about getting more women into the technology field via the ladies technology group she founded, <a href='http://ladytacos.com/' title='LAdy Tacos &raquo; Los Angeles Women Working in Technology'>LAdy Tacos</a> and as a contributor for <a href='http://blogs.forbes.com/tarabrown/' title='Tara Tiger Brown - Lady Bits - Forbes'>ForbesWoman</a>.</p>

      <p>In an effort to showcase the soft spoken tech scene in LA, she wrote the Forbes piece <a href='http://www.forbes.com/sites/tarabrown/2012/03/06/why-los-angeles-will-outpace-silicon-valley-as-the-tech-startup-capital/' title='Why Los Angeles Will Outpace Silicon Valley As The Tech Startup Capital - Forbes'>Why Los Angeles Will Outpace Silicon Valley As The Tech Startup Capital</a> and is currently working with startups and startup spaces to give LA a louder voice.</p>

      <p>In her spare time she works on ridiculous things like: <a href='http://catworkout.com/' title='Cat Workout'>Cat Workout</a>; crowd-sourced music videos: <a href='http://wearethedoorways.com/' title='We Are The Doorways | by: The Insane Warrior'>We Are The Doorways</a>; and storytelling: <a href='http://transmediala.net/' title='Transmedia L.A.'>TransmediaLA</a>.</p>
    ",
    :talk => {
      :slug        => "mapping-the-la-tech-scene",
      :title       => "Mapping the LA Tech Scene",
      :description => "Recently Tara wrote a popular post on Forbes about how LA is going to take over the Silicon Valley as the hottest place to run a tech startup. This post received both positive cheers from the LA startup community and guffaws from Silicon Valley. In her talk Tara will talk about the history of the LA tech scene and map out where the startups and money guys (VCs, incubators) are within LA County."
    },
    :video => {
      :youtube       => "aH8LBS16yMk",
      :canonical_url => "http://confreaks.com/videos/944-farmhouseconf2-mapping-the-la-tech-scene"
    }
  },
  {
    :name => "Greg Bennick",
    :bio  => %s{
      <p>Greg Bennick is the singer of the hardcore bands <a href="http://en.wikipedia.org/wiki/Trial_(band)" title="Trial (band) - Wikipedia">Trial</a> and <a href="http://myspace.com/betweenearthandsky" title="Between Earth and Sky | Free Music, Tour Dates, Photos, Videos">Between Earth &amp; Sky</a>. He is the founder and executive director of <a href="http://onehundredforhaiti.org" title="ONE HUNDRED FOR HAITI">One Hundred For Haiti</a>, a development and relief organization focusing on bringing opportunities to people in post-earthquake Haiti. He co-founded <a href="http://www.thelegacyproject.com" title="Welcome to the Legacy Project Home Page">The Legacy Project</a> a multi-year initiative to explore how people transition from massive trauma on a social scale to a point of finding reconciliation and justice. He co-produced a number of documentaries which have been seen globally including the multi-award winning &ldquo;<a href="http://flightfromdeath.com/" title="Flight from Death: The Quest for Immortality">Flight From Death: The Quest For Immortality</a>&rdquo;. He speaks to audiences around the world, full time, and is based in Seattle WA.</p>
    },
    :talk => {
      :slug        => "the-map-from-trauma-to-survival",
      :title       => "The Map from Trauma to Survival",
      :description => "Greg will be speaking about the map from trauma to survival that One Hundred For Haiti is exploring as it starts a new program called &ldquo;Moto Logistics&rdquo; as a development initiative in Haiti. The program might serve as a model to anyone doing development, social, or relief work anywhere in the world as a means of creating jobs and new opportunities from the standpoint of SELF empowerment rather than imposed empowerment."
    },
    :video => {
      :youtube       => "oPl8agvot1U",
      :canonical_url => "http://confreaks.com/videos/945-farmhouseconf2-the-map-from-trauma-survival"
    }
  },
  {
    :name => "Brian",
    :bio  => %s{
      <p>A longtime contributor to the notorious underground publisher <a href="http://www.crimethinc.com/">CrimethInc.</a>, Brian has organized on a national level within the anarchist, anti-globalization, anti-war, and Occupy movements. In the course of the resulting adventures, he has breathed tear gas for days on end, faced felony rioting charges, and lost friends to the bullets of Mexican paramilitaries. Recently he has traveled the Americas and Europe speaking on grass-roots social movements and anti-capitalist strategies, appearing everywhere from the School of Fine Arts in Athens, Greece to the Universidade Federal de Minas Gerais in Belo Horizonte, but chiefly outside the academy at occupations, social centers, and union halls.</p>
    },
    :talk => {
      :slug        => "the-map-versus-the-territory",
      :title       => "The Map versus the Territory",
      :description => "What does Twitter have to do with anarchist revolution? More than you might think, even if you think immediately of Egypt and Tunisia. Brian will discuss how the radical demands of the previous generation have been integrated into today's economy, how activism and technology influence one another, and how competing cartographies of power are racing to define the future."
    },
    :video => {
      :youtube       => "h8sw2pgMJfI",
      :canonical_url => "http://confreaks.com/videos/948-farmhouseconf2-the-map-versus-the-territory"
    }
  },
  {
    :name => "Maggie Mayhem",
    :bio  => %s{
      <p><a href="http://missmaggiemayhem.com" title="Maggie Mayhem Speaks | Radical sex hacking">Maggie</a> <a href="http://psigasm.net" title="The Psigasm Project - Come for Science!">Mayhem</a> had no idea that when she signed up to volunteer 5 hours a week at an HIV testing clinic in 2003 that her experiences would disrupt her life plan to pursue a career in law and turn her into a full time sex educator, HIV prevention and harm reduction specialist, and activist. By 2006 she was coordinating the University of California Free and Anonymous HIV test program and setting her sights on lifetime pursuing social justice.</p>

      <p>After graduating from UC Santa Cruz she relocated to Oakland, CA and accepted a position as the HIV Senior Specialist at Larkin Street Youth Services in San Francisco. She spent the summer of 2009 doing grant work in HIV/AIDS prevention and care in Bagamoyo, Tanzania and resigned from her post at Larkin Street Youth Services to in 2010 to volunteer with disaster relief in Leogane, Haiti.</p>

      <p>As an activist for sex positivity, Maggie also produces adult films that challenge gender and sexuality norms as well as unfair and exploitative industry practices. She works within a small community of queer identified indie performers and producers who are cultivating a sustainable model based on collaboration, communication, and authentic depictions of sexuality and desire. If you search for her <a href="http://google.com/search?q=maggie+mayhem" title="maggie mayhem - Google Search">on Google</a>, be prepared for links that are NSFW and for an 18+ audience.</p>
    },
    :talk => {
      :slug        => "navigating-the-gender-landscape",
      :title       => "Navigating The Gender Landscape",
      :description => "Do we have a gender orientation or are we gender orienteering? In this talk, Maggie Mayhem will talk about how the hardware and software behind our gender assignments, identity, and presentation and demonstrate how male and female are just two potential points on the compass."
    },
    :video => {
      :youtube       => "puBXNYSXlMk",
      :canonical_url => "http://confreaks.com/videos/949-farmhouseconf2-navigating-the-gender-landscape"
    }
  },
  {
    :name => "Nova Han",
    :bio  => %s{
      <p>To navigate and create, unique and explosive art has been the life quest of <a href="http://www.novahan.com/" title="NOVA HAN">Nova Han</a> since she was a little girl. From visions of ultimate beauty to the genuinely twisted and obscure, Han's curiosity takes her viewers past conventional horizons, and makes them step courageously past it, beckoning the brave to face their own truths.</p>

      <p>Han now tours the world, shaking up the masses and bringing raw art to the stages. She has spent the last 7 years running the world renowned cirque troupe, <b><a href="http://lucentdossier.com" title="The Lucent Dossier Experience - LUCENT DOSSIER NEWS">Lucent Dossier Experience</a></b> as the Tech Director, Producer, Choreographer and Performer.  She has now started her own interactive video mapping performance art troupe called <b><a href="https://www.facebook.com/pages/Wilderbe/182284181881684">Wilderbe</a></b>.</p>

      <p>Her work has been featured at the <b>Coachella: Music and Arts Festival</b> (6 yrs), <b>The Official Grammy's Celebration</b> (3 yrs),  <b>Electric Picnic</b> in Ireland (5 yrs), <b>Lightning in a Bottle</b> (6 yrs), <b>Boom Festival</b> in Portugal, <b>Optimus Alive</b> in Portugal, <b>Summer Sonic</b> in Japan, <b>Electric Daisy Carnival</b> (3 yrs).</p>

      <p>She has also been seen on networks such as <b>MTV</b>, <b>BRAVO</b>, <b>VHI</b>, <b>Fuse TV</b>, <b>Spike TV</b>, <b>KTLA</b> and <b>Univision</b> as well as a featured guest on the <b>Ellen De Generes Show</b>.</p>

      <p>Nova Han's Production background includes working for <b>Kevin Lyman</b> founder of the Van's <b>Warped Tour</b> and Billboard's top 50 most influential people in music history as a Producer and Office Manager, as well as working for <b>Madison House</b> as a Producer and Creative Consultant.</p>

      <p>Han's work has been featured all over the world including, <b>England</b>, <b>Ireland</b>, <b>Italy</b>, <b>France</b>, <b>Portugal</b>, <b>Japan</b>, <b>Guatemala</b>, and <b>Canada</b>.</p>
    },
    :talk => {
      :slug        => "how-einstein-led-me-to-bliss",
      :title       => "How Einstein Led Me to Bliss, a Carnie Kingdom, and Pioneering New Methods in Video Mapping",
      :description => "In her talk, Nova will discuss how Einstein inspired her to follow her ultimate happiness and how that chain of events opened up door after door, leading her to her next destinations in life. She will discuss her adventures as a successful circus carnie and how that brought her to a place of pioneering new methods in performance art using interactive video mapping.  Nova will discuss where she sees the future of entertainment and how it will be changed forever using advanced technology. We are inventing the future now."
    },
    :video => {
      :youtube       => "ASRk9tcrero",
      :canonical_url => "http://confreaks.com/videos/953-farmhouseconf2-how-einstein-led-me-bliss-a-carnie-kingdom-and-pioneering-new-methods-in-video-mapping"
    }
  },
  {
    :name => "Eric Gradman",
    :bio  => %s{
      <p><a href="http://gradman.com" title="Eric Gradman">Eric Gradman</a> is an inventor and entertainer who makes others see technology as magic. He has a colorful history as a circus performer, professional whistler, roboticist, and rapid prototyper. He co-founded <a href="http://doppelgames.com" title="Doppelgames - Home">Doppelgames</a>, a Los Angeles location-based gaming studio.</p>

      <p>He is also one of the founding members of <a href="http://SyynLabs.com" title="Syyn Labs">Syyn Labs</a>, a group of artists, thinkers, technologists, engineers and scientists who build and twist together art and technology in original inventive ways. From its humble beginnings as "a drinking club with an art problem" the group's work became a viral sensation in 2010 when it co-directed <a href="http://okgo.net" title="OK Go | The Official Website of OK Go">OK Go's</a> <a href="http://www.youtube.com/watch?v=qybUFnY7Y8w" title="OK Go - This Too Shall Pass - Rube Goldberg Machine version - Official - YouTube">This Too Shall Pass music video</a>, which has been viewed over 35 million times online. Its unique assembly builds creative contraptions and interactive installations that encourage audiences to play together by lowering social barriers.</p>

      <p>The Syyn Labs members have designed and developed an elaborate portfolio of proprietary technological marvels including <a href="http://syynlabs.com/blog/glowing-in-santa-monica-with-the-dna-sequencer/" title="Syyn Labs / GLOWING in Santa Monica with the DNA Sequencer">the DNA Sequencer</a>, <a href="http://www.gradman.com/artfall" title="ArtFall  @  Eric Gradman">ArtFall</a>, an interactive whiteboard; <a href="http://www.youtube.com/watch?v=7Hp9H5C6He4" title="Swimming in Trees + Syyn Labs at TED! (2/2) - YouTube">Rubens Tubes</a>, a sound-reactive fire sculpture; <a href="http://syynlabs.com/blog/sonic-stalagmites/" title="Syyn Labs / Sonic Stalagmites">Sonic Stalagmites</a>, painting with sound and <a href="http://gradman.com/cloudmirror" title="The Cloud Mirror  @  Eric Gradman">the Cloud Mirror</a>, which uses augmented reality to bring an event's badges to life.</p>

      <p>Their exhibits have been showcased in commercial spots for Comedy Central, Disney XD, Google and Young &amp; Rubicam, and exhibited at LACMA and the Santa Monica Glow Festival. Syyn Labs has also be featured extensively in the media, including WIRED, The Wall Street Journal, Rolling Stone, CNN, the Los Angeles Times.</p>
    },
    :talk => {
      :slug        => "theres-no-map-for-inventiveness",
      :title       => "There&rsquo;s No Map for Inventiveness",
      :description => "Getting from an empty piece of paper to an interactive marvel is never as simple as going from point A to point B. The places you wind up on the journey are all part of the fun."
    },
    :video => {
      :youtube       => "D5PSm2KyKZY",
      :canonical_url => "http://confreaks.com/videos/954-farmhouseconf2-there-s-no-map-for-inventiveness"
    }
  },
  {
    :name => "Jenny Ryan",
    :bio  => %s{
      <p>An incorrigibly nomadic cyberanthropologist gone gonzo, <a href="http://jennyryan.net/" title="webnography">Jenny Ryan</a> recently dropped out of graduate school to more fully tune in to emerging movements rooted in the shared struggle to reclaim the commons, create public spheres through the cultivation of open spaces, and enable direct democracy through principles of federation and open source or Read/Write culture.</p>

      <p>Her past research ranges from an extensive ethnography of online social networking (<a href="http://thevirtualcampfire.org/" title="The Virtual Campfire, by Jenny Ryan">The Virtual Campfire</a>), to digital literacy skills for the 21st century (with <a href="http://rheingold.com/" title="Howard Rheingold | Exploring mind amplifiers since 1964">Howard Rheingold</a>), to the legal and ethical dimensions of problematic online content (with <a href="http://www.danah.org/papers/2011/IS-ProSelfHarm.pdf" title="">danah boyd</a>), to posthuman anthropological explorations of how the dead live on online.</p>

      <p>In her spare time, she makes websites for her superhero friends, helps to organize an emerging Oakland hackerspace (<a href="http://sudoroom.org/" title="Sudo Room | Building an East Bay creative community and hackerspace">Sudo Room</a>), and acts as a connector of aligned humans, groups and projects.</p>
    },
    :talk => {
      :slug        => "culture-reboot-mapping-open-spaces",
      :title       => "Culture Reboot: Mapping Open Spaces and Collaborative Practices in the Emergent Network Economy",
      :description => %s{ We are entering an era that calls for an end to scarcity and individualism toward collaboration, communalism and a commons-based economy. Working together with hackers, makers, neotribalists, activists, technologists, and other edgy thinkers, Jenny seeks to create a new kind of ethnography founded in co-creation, mobility and multimodal documentation. Her current efforts are directed towards building the digital infrastructure for the project, as well as preparations for a 6-9 month multidisciplinary field study to initiate direct collaboration with primary partners and establish a network including all involved parties. (<a href="http://thepyre.org" title="The Pyre | free the means">thepyre.org</a>) }
    },
    :video => {
      :youtube       => "esUObl38UbQ",
      :canonical_url => "http://confreaks.com/videos/950-farmhouseconf2-culture-reboot-mapping-open-spaces-and-collaborative-practices-in-the-emergent-network-economy"
    }
  },
  {
    :name => "Simone Syed",
    :bio  => %s{
      <p><a href="http://twitter.com/SimoneSyed" title="@SimoneSyed">Simone Syed</a> is particularly interested in building better futures. As an entrepreneur, product storyteller, community builder, and technology forecaster, she has been able to create value in the industries she thinks are most interesting and impactful.</p>

      <p>Simone has co-founded <a href="http://www.bilconference.com/" title="BIL Conference - Minds Set Free">BIL Conference</a>, H+ Club, and LA Space Salon. <a href="http://twitter.com/bilconf" title="@bilconf">BIL Conference</a> is the open source, participant powered answer to the TED Conference Series, wherein BIL pilfers <a href="http://ted.com" title="TED: Ideas worth spreading">TED&rsquo;s</a> attendees, sponsors, and format to Set Minds Free by merging innovation and community to change the world. Her other community building efforts are cool too.</p>

      <p>Simone has disrupted the financial industry by co-founding a mobile payments system called <a href="http://bitcoin.com" title="Bitcoin - P2P digital currency">bitcoin.com</a>. The mobile app pivoted into GammaPay after getting funded and incorporated many different currencies to pay anyone, anywhere, with anything&hellip; including sheep! The project was abandoned when the founders decided that they didn&rsquo;t want to go to jail because the banking industry was annoyed that the app worked outside of the current financial system and government referred to bitcoin as a competing currency.</p>

      <p>Simone likes disrupting popular notions of what health and science are. PaleoDream is seriously healthy ice cream made using liquid nitrogen and rocket power. WeScience crowd sources high-quality clinical trials performed by citizen scientists to find out what therapies actually work. GeneBook is a facebook/23andMe mashup to help you find a perfect partner through histocompatibility and social data.</p>

      <p>Simone is busy with her new company <a href="http://blackstarrgroup.com" title="BlackStarr Group">BlackStarr</a>, which specializes in integrating space and biotechnology into popular culture. <a href="http://twitter.com/BlackStarrGroup" title="@BlackStarrGroup">BlackStarr</a> is currently working on producing a Discovery Channel show as well as collaborating with <a href="http://www.billnye.com/" title="Bill Nye the Science Guy">Bill Nye the Science Guy</a>, <a href="http://virgingalactic.com" title="Welcome | Virgin Galactic">Virgin Galactic</a>, and <a href="http://spacex.com" title="SpaceX">SpaceX</a> to disrupt Hollywood.</p>

      <p>Many of Simone&rsquo;s antics are documented in Wired, The Wall Street Journal, The Los Angeles Times, Reason Magazine, NPR, Technology Review, and The Huffington Post.</p>
    },
    :talk => {
      :slug        => "mapping-a-way-to-the-stars",
      :title       => "Mapping a Way to the Stars by Disrupting the Status Quo",
      :description => %s{ As the private sector gains momentum and mastery of the technology capable of continuing NASA&rsquo;s legacy of human space flight, we find that the general public has lost the awe and inspiration that space once held. By disrupting the standard ideology on what space means and who is engaging in this unfolding story, we can reinvigorate the human spirit of innovation and exploration&mdash; and in the near future give all who desire, a chance to explore the stars for themselves. }
    },
    :video => {
      :youtube       => "gOsDLMMKchs",
      :canonical_url => "http://confreaks.com/videos/946-farmhouseconf2-mapping-a-way-the-stars-by-disrupting-the-status-quo"
    }
  },
  {
    :name => "Mitch Artman",
    :bio  => %s{
      <p>Mitch Artman worked as a special education teacher for inner city children in Brooklyn before becoming a social worker in Los Angeles. He works for the county&rsquo;s Department of Mental Health as a &ldquo;Psychiatric Social Worker&rdquo;, which means doing therapy and case-management for 200 people with mental illnesses. He loves his job.</p>
    },
    :talk => {
      :slug        => "falling-off-the-map-skid-row-life-cycle",
      :title       => "Falling Off the Map: The Skid Row Life-Cycle",
      :description => %s{ Skid Row is more than just the down-and-out neighborhood of Los Angeles: it is a necessary and nearly deliberate outcome of city planning. The intersection of poverty, racism, mental health, housing, drugs, violence, family breakdown and recovery create a sub-culture and governmental response that both eye each other with mutual suspicion and accusations of futility. This talk will consider some of the more common life-courses individuals in Skid Row take to obtain basic needs, particularly as they relate to mental illness, which for most is inextricably linked with their reasons for both not being able to escape Skid Row, and paradoxically, their best chance for escaping. }
    },
    :video => {
      :youtube       => "eFx5hkpyLCk",
      :canonical_url => "http://confreaks.com/videos/947-farmhouseconf2-falling-off-the-map-the-skid-row-life-cycle"
    }
  },
  {
    :name => "Marc Horowitz",
    :bio  => %s{
      <p><a href="http://twitter.com/marchorowitz" title="@marchorowitz">Marc Horowitz</a> is many things: a virtual cross country explorer, a comedic performance enthusiast, sheep shearer, social experimentalist, one of People Magazine&rsquo;s 50 most eligible bachelors, and possibly the first would-be inventor of a brick-house, diesel-truck, hybrid helicopter.</p>

      <p>One of his most recent digital adventures landed him on NPR&rsquo;s Weekend Edition &mdash; discussing the Los Angeles to Richmond, Virginia road trip he and friend, Peter Baldes, took via Google Maps without ever leaving their homes. Prior to that, Marc was challenged to live 168 hours straight in a Nissan Sentra for the &ldquo;Seven Days in a Sentra&rdquo; national ad campaign.</p>

      <p>Before his Nissan project, Marc spent the better part of an entire year traveling around the country having dinner with strangers he met out of a Crate &amp; Barrel catalog. After that, he drove the shape of his coast-to-coast signature on a US map, improving towns along the way. These improvements include starting an Anonymous Semi-Nudist Colony in Nampa, Idaho and burying an entire town&rsquo;s problems in Craig, Colorado.</p>

      <p>Other projects include: the Talkshow247 internet broadcast, a 24/7 three month long lifecast; his involvement with The Center for Improved Living, The Me &amp; You Show, the Human Video Game experiment; and well, you get the idea. Marc is a busy man, with many talents.</p>

      <p>His work can be seen at <a href="http://ineedtostopsoon.com" title="marc horowitz">ineedtostopsoon.com</a></p>
    },
    :talk => {
      :slug        => "mapping-with-witz",
      :title       => "Mapping with Wit(z)",
      :description => %s{ Marc will discuss three of his projects that deal with the idea of mapping via travel, both physical and virtual. 1) <i>The National Dinner Tour</i>, a project where Marc wrote &ldquo;dinner w/ marc 510-872-7326,&rdquo; his name and cell phone, on a dry erase board featured in a Crate &amp; Barrel catalog. He eventually received over 30,000 calls from people wanting to dine with him. As a result, He traveled the US in a tiny RV for a year dining with strangers. 2) <i>The Signature Series</i>, where Marc signed his name on a US map and then drove that route, &ldquo;improving&rdquo; towns along the way. For example, he started the first ever Semi-anonymous Nudist Colony in Nampa, Idaho and buried an entire town's problems in Craig, Colorado. And 3) <i>Google Maps Road Trip</i>, where Marc and his friend Pete Baldes virtually traveled across the US entirely on Google Maps using the arrow keys to drive. }
    },
    :video => {
      :youtube       => "3J1UmZ-QNa4",
      :canonical_url => "http://confreaks.com/videos/951-farmhouseconf2-mapping-with-wit-z"
    }
  }
]

# fhc2 people + talks
people_2.each do |person|
  slug = person[:name].downcase.gsub(/\s/, "_")

  speaker = Person.create!(
    :name       => person[:name],
    :bio        => person[:bio],
    :image      => "http://farmhouse.la/images/speakers/#{slug}/#{slug}.jpg",
    :staff      => false,
    :organizer  => false
  )

  talk = Talk.create!(
    :conf_id      => farmhouse_conf_2.id,
    :title        => person[:talk][:title],
    :subtitle     => "",
    :description  => person[:talk][:description],
    :slug         => person[:talk][:slug]
  )

  talk.people << speaker

  video = Video.create!(
    :conf_id          => farmhouse_conf_2.id,
    :talk_id          => talk.id,
    :caption          => talk.description,
    :videographer     => "Coby Randquist",
    :youtube          => person[:video][:youtube],
    :canonical_url    => person[:video][:canonical_url]
  )

  talk.videos << video
end

# fhc2 alumni talks
fhc2_sean_talk = Talk.where(:slug => "sean-bonner").first
fhc2_sean_video = Video.create!(
  :conf_id          => farmhouse_conf_2.id,
  :talk_id          => fhc2_sean_talk.id,
  :caption          => fhc2_sean_talk.description,
  :videographer     => "Coby Randquist",
  :youtube          => "XVmm1PG9yG0",
  :canonical_url    => "http://confreaks.com/videos/952-farmhouseconf2-alumni-re-caps"
)
fhc2_sean_talk.videos << fhc2_sean_video

fhc2_eli_talk = Talk.where(:slug => "eli-duke").first
fhc2_eli_video = Video.create!(
  :conf_id          => farmhouse_conf_2.id,
  :talk_id          => fhc2_eli_talk.id,
  :caption          => fhc2_eli_talk.description,
  :videographer     => "Coby Randquist",
  :youtube          => "XVmm1PG9yG0",
  :canonical_url    => "http://confreaks.com/videos/952-farmhouseconf2-alumni-re-caps"
)
fhc2_eli_talk.videos << fhc2_eli_video



# farmhouse conf 3, 2012
farmhouse_conf_3 = Conf.create!(
  :name             => "Farmhouse Conf 3",
  :subtitle         => "<b>Disruption</b> Stories Under an Avocado Tree in Hollywood, California",
  :year             => 2012,
  :starts_at        => DateTime.parse("2012-11-03 10:00"),
  :ends_at          => DateTime.parse("2012-11-03 23:00"),
  :location_id      => location.id,
  :twitter          => "farmhouse",
  :theme            => "Disruption",
  :registration_url => "https://farmhouse.eventwax.com/farmhouse-conf-3/register/"
)


# farmhouse conf 2 speakers
people_3 = [
  {
    :name => "Shepard Fairey",
    :bio  => %Q{
      <p><a href="https://twitter.com/OBEYGIANT" title="@obeygiant">Shepard Fairey</a> was born in Charleston, SC in 1970. He received his B.F.A. at the <a href="http://risd.edu" title="Rhode Island School of Design | RISD">Rhode Island School of Design</a> in Providence. While at R.I.S.D. he created the <a href="http://en.wikipedia.org/wiki/Andre_the_Giant_Has_a_Posse" title="Andre the Giant Has a Posse - Wikipedia"><i>Andre the Giant has a Posse</i></a> sticker that transformed into the <a href="http://obeygiant.com/" title="OBEY GIANT - WORLDWIDE PROPAGANDA DELIVERY">OBEY GIANT</a> art campaign with imagery that has changed the way people see art and the urban landscape. His work has evolved into an acclaimed body of art, which includes the 2008 <a href="http://obeygiant.com/headlines/obama-hope" title="OBAMA HOPE - OBEY GIANT">&ldquo;Hope&rdquo; portrait of Barack Obama</a> which can be <a href="http://npgportraits.si.edu/emuseumnpg/code/emuseum.asp?style=text&amp;currentrecord=1&amp;page=search&amp;profile=CAP&amp;searchdesc=Artist%20contains%20shepard%20fai...&amp;searchstring=Artist/,/contains/,/shepard%20fairey/,/false/,/false&amp;newvalues=1&amp;newaction=newpage&amp;newstyle=single&amp;newcurrentrecord=2" title="National Portrait Gallery,  Smithsonian Institution | Catalog of American Portraits | Portrait Search">found</a> in the <a href="http://npg.si.edu/" title="The National Portrait Gallery">Smithsonian&rsquo;s National Portrait</a> gallery.</p>

      <p>Since the beginning of his career in 1989 he has exhibited in galleries and museums around the world, indoor and outdoor. His works are in the permanent collections of the MOMA, the Victoria and Albert Museum, the Boston ICA and many others. For more information, visit <a href="http://obeygiant.com" title="OBEY GIANT - WORLDWIDE PROPAGANDA DELIVERY">obeygiant.com</a>.</p>
    },
    :talk => {
      :slug        => "meme-myself-and-eye",
      :title       => "Meme, Myself, and Eye.",
      :description => "<p>The physical and virtual approach to creating viral memes. The visceral reaction to the things that exist in, impact, and replicate in the real world helps to propel things to go viral in the virtual world. The digital tools help to achieve greater reach, but understanding the fundamentals of human emotional response to the tangible and powerful is essential.</p>"
    },
    :video => {
      :youtube       => "",
      :canonical_url => ""
    },
    :video => {
      :youtube       => "",
      :canonical_url => ""
    }
  },
  {
    :name => "Andy Baio",
    :bio  => %Q{
      <p>Andy Baio is a writer and coder who loves making things. His latest projects include <a href="http://xoxo.in/" title="Web Site: xoxo.in">XOXO</a>, a four-day conference and festival in Portland, and <a href="http://playfic.com/" title="Playfic">Playfic</a>, a community for writing and sharing interactive fiction games. He's an advisor and the former CTO of <a href="http://kickstarter.com/" title="Kickstarter">Kickstarter</a>, the largest crowdfunding site in the world, produced <a href="http://kindofbloop.com/" title="Kind of Bloop: An 8-Bit Tribute to Miles Davis' Kind of Blue">Kind of Bloop</a>, the first and only chiptune jazz album, and created <a href="http://en.wikipedia.org/wiki/Upcoming" title="Upcoming - Wikipedia, the free encyclopedia">Upcoming</a>, the collaborative events calendar acquired by Yahoo in 2005. He writes a weekly column for <a href="http://Wired.com/" title="Wired.com">Wired.com</a>, and original reporting on his blog <a href="http://waxy.org/" title="Waxy.org: Andy Baio lives here">Waxy.org</a> has been featured in the New York Times, Wired, NPR, Newsweek, and MSNBC.</p>
    },
    :talk => {
      :slug        => "shut-up-and-take-my-money",
      :title       => "Shut Up and Take My Money",
      :description => "<p>Kickstarter&rsquo;s transformed the landscape for funding creative projects, but it's also launched a new movement of fans as producers &mdash; people commissioning work from artists directly instead of waiting for artists to come to them. This is the story of XOXO, an arts &amp; technology festival that became the most-funded event on Kickstarter, and the future of fans replacing traditional labels, publishers, and studios.</p>"
    },
    :video => {
      :youtube       => "rmrrapKyKN8",
      :canonical_url => "http://confreaks.com/videos/2412-fhc3-shut-up-and-take-my-money"
    }
  },
  {
    :name => "Kate Darling",
    :bio  => %Q{
      <p>Kate Darling is an IP Research Specialist at the MIT Media Lab and a Ph.D. candidate in Intellectual Property and Law &amp; Economics. After surviving law school, she went on to pursue her passion for innovation policy at the intersection of law and technology. Her work focuses on economic issues in copyright and patent systems. She also writes and lectures about robot ethics.</p>
    },
    :talk => {
      :slug        => "adult-entertainment-in-the-digital-age",
      :title       => "Adult Entertainment in the Digital Age",
      :description => %Q{ <p>Common lore tells us that porn drives technology. From the paperback book to home cinema to online payment systems, the adult industry has influenced new media adoption and pioneered technological innovation. True to the song "The Internet is for Porn", our new architecture for distributing information has caused an explosion of adult content online. But in an era of digital files and content aggregators, how is this socially stigmatized industry dealing with copyright protection issues?</p> },
    },
    :video => {
      :youtube       => "FbPouKxLIM4",
      :canonical_url => "http://confreaks.com/videos/2413-fhc3-adult-entertainment-in-the-digital-age"
    }
  },
  {
    :name => "Caroline Woolard",
    :bio  => %Q{
      <p><a href="http://carolinewoolard.com" title="Caroline Woolard">Caroline Woolard</a> moves between art, design, and activism. After installing guerrilla <a href="http://www.deepcraft.org/deep/wp-content/uploads/2009/04/woolard_caroline_publicseat.jpg" title="">public seating</a> around New York City and producing a <a href="http://www.youtube.com/watch?v=BUaK4vA4srM" title="Subway Swing - YouTube">swing for the subway system</a>, she co-founded a global network of schools that run on barter (<a href="http://tradeschool.coop" title="Trade School">TradeSchool.coop</a>) and an alternative economy for creative people (<a href="https://ourgoods.org">OurGoods.org</a>). In the past year, Caroline has presented this work at the Whitney Museum, the Queens Museum, the Museum of Art and Design, California College of the Arts, Sotheby's Institute, and MIT's Center for Civic Media. Caroline also co-organizes a space for 30 artists in Brooklyn, teaches at the <a href="http://finearts.parsons.edu/home/?q=node/5" title="Parsons Fine Arts">New School</a>, is currently a Fellow at <a href="http://eyebeam.org/people/caroline-woolard" title="Caroline Woolard | eyebeam.org">Eyebeam</a>, and will be doing a project at MoMA in 2013.</p>
    },
    :talk => {
      :slug        => "barter-with-me",
      :title       => "Barter with Me",
      :description => %Q{ <p><a href="http://tradeschool.coop" title="Trade School">Trade School</a> is a self-organized learning model that runs on barter. No one has ever been paid to organize a Trade School or teach a class there, but the model is working in 18 cities around the world. How does barter build community? This is the story of Trade School, started by three friends from <a href="https://ourgoods.org">OurGoods.org</a> in NYC in 2010, and now running in Barcelona, Cologne, Milan, Singapore, London, Cardiff, Manila, Quito, Glasgow, Bangkok, Purchase, Paris, and new cities each month. Trade School is an all-volunteer led organization, for now.</p> },
    },
    :video => {
      :youtube       => "pv4pUHRjdno",
      :canonical_url => "http://confreaks.com/videos/2414-fhc3-barter-with-me"
    }
  },
  {
    :name => "Michael Lopp (@rands)",
    :bio  => %Q{
      <p><a href="http://twitter.com/rands" title="@rands on Twitter">Michael Lopp</a> is a Silicon Valley-based engineering leader who builds both people and software at companies such as <a href="http://borland.com" title="Open &amp; Agile Requirement, Test &amp; Change Management Solutions - Borland">Borland</a>, <a href="http://en.wikipedia.org/wiki/Netscape" title="Netscape - Wikipedia, the free encyclopedia">Netscape</a>, <a href="http://www.apple.com" title="Apple">Apple</a>, and <a href="http://www.palantir.com" title="Home | Palantir">Palantir</a>. While he's not worrying about staying relevant, he writes about <a href="http://www.randsinrepose.com/archives/2007/10/16/the_gel_dilemma.html" title="Rands In Repose: The Gel Dilemma">pens</a>, <a href="http://www.randsinrepose.com/archives/2009/03/23/the_makers_of_things.html" title="Rands In Repose: The Makers of Things">bridges</a>, <a href="http://www.randsinrepose.com/cat_management.html" title="Rands In Repose : Management Archives">people</a>, <a href="http://www.randsinrepose.com/archives/2004/11/09/rands_home_poke.html" title="Rands In Repose: Rands Home Poker System">poker</a>, and <a href="http://www.alistapart.com/articles/managing-werewolves/" title="A List Apart: Articles: Managing Werewolves">werewolves</a> at the popular weblog, <a href="http://randsinrepose.com" title="Rands In Repose">Rands in Repose</a>.</p>
      <p>Michael has written two books. "<a href="http://www.beinggeek.com" title="Being Geek - The Software Developer's Career Handbook">Being Geek</a>" is a career handbook for geeks and nerds alike. His first book "<a href="http://www.managinghumans.com" title="Managing Humans - An Introduction">Managing Humans, 2nd Edition</a>" is a popular guide to the art of engineering leadership and clearly explains that while you might be rewarded for what you build, you will only be successful because of your people.</p>
      <p>Michael surfs, plays hockey, and drinks red wine in the redwoods of Northern California whenever he can because staying sane is more important than staying busy.</p>
    },
    :talk => {
      :slug        => "stables-and-volatiles",
      :title       => "Stables and Volatiles",
      :description => %Q{ <p>On your team, there is an emerging war and if you want your team, company, and products to remain relevant, you need to encourage it.</p> },
    },
    :video => {
      :youtube       => "sTNMAVfd0rQ",
      :canonical_url => "http://confreaks.com/videos/2415-fhc3-stables-and-volatiles"
    }
  },
  {
    :name => "Zoetica Ebb",
    :bio  => %Q{
      <p> Zoetica Ebb is a Moscow-born, LA-raised artist, writer and photographer. She is dedicated to proving that life is as beautiful as we make it. On her blog, <a href="http://Biorequiem.com" title="Zoetica Ebb // Biorequiem.com &#8212; Art, style, space adventures">Biorequiem.com</a>, Zoetica offers unorthodox fashion advice, lifestyle tips, cultural commentary, and answers readers' questions about everything from ways to wear short skirts to quitting art school to learning to love the world. </p>
      <p> Zoetica's current projects include <a href="http://www.kickstarter.com/projects/1080572418/the-secret-guide-to-alternative-beijing-0" title="The Secret Guide To Alternative Beijing by The Frei Group &mdash; Kickstarter">The Secret Guide to Alternative Beijing</a> - a video travel guide series giving insight into the alternative art, fashion, music, and nightlife culture in Beijing, and <a href="http://zoetica.tumblr.com/search/alien+botany" title="ZOETICA EBB, Search results for: alien botany">Alien Botany</a> - a painstaking and time-consuming art series dedicated to beastly flora and antique botanical illustration. </p>
      <p> Last year, Zoetica launched <b>GHST RDR</b> in <a href="http://blogs.laweekly.com/arts/2011/05/zoetica_ebb_plastik_wrap_ghst.php" title="Zoetica Ebb and Plastik Wrap Join Forces for the Cyber Victorian Collaboration GHST RDR - Los Angeles - Arts - Public Spectacle">collaboration</a> with Adriana Fulop of Toronto label, Plastik Wrap. <a href="http://hautemacabre.com/2011/11/half-light-beach-limited-time-ghst-rdr-promotion/" title="Half-light Beach // Limited-time GHST RDR Promotion |">GHST RDR</a> is a jacket-and-skirt combo, inspired by Victorian riding fashion and anime robots. She also used Kickstarter to raise $8,400 for <a href="http://www.chinashopmag.com/?s=yantalo&amp;submit.x=0&amp;submit.y=0&amp;submit=Search" title="yantalo | Search Results | ChinaShop">D4RT</a> - a support project for a developing village in the Peruvian Amazon jungle, where Zoetica hand-delivered art supplies, taught a kids' introductory art workshop, and painted a mural with village locals. She'd like to do this again sometime. </p>
      <p> In recent years, Zoetica worked as a culture <a href="http://www.chinashopmag.com/author/zoetica-ebb/">writer and photographer</a> for <b>RedBull's Chinashop Magazine</b>, specializing in urban exploration and art coverage. From 2007 to 2012 Zoetica was part of <b>Coilhouse</b> - a magazine and <a href="http://coilhouse.net/author/zoetica/" title="Coilhouse &raquo; Zoetica">blog</a> she co-founded, billed as "a love letter to alternative culture". </p>
    },
    :talk => {
      :slug        => "the-2012-beijing-aesthetic",
      :title       => "The 2012 Beijing Aesthetic",
      :description => %Q{
        <p>In September, a small team and I went to China to film <i>The Secret Guide to Alternative Beijing</i> - part travel guide, part documentary, largely a time capsule of what's happening in the alternative culture of China's capital. Known as "the city of contrasts", Beijing earns its name now more than ever. I'll talk about the polarity between the creatives we interviewed, their work, how Beijing's striking aesthetic informs its culture and vice versa.</p>
      },
    },
    :video => {
      :youtube       => "5RMjHllI2z0",
      :canonical_url => "http://confreaks.com/videos/2416-fhc3-the-2012-beijing-aesthetic"
    }
  },
  {
    :name => "Megan Dean",
    :bio  => %Q{
      <p>Before there were frames, there was a moth attack. Or at least a moth infestation one morning in the Los Angeles kitchen of <a href="https://twitter.com/mothattack">Megan Dean</a>. It was one of those situations where one could either get annoyed or motivated, and Megan choose the latter. Launching <a href="http://mothattack.com" title="mothattack">Moth Attack</a> after perfecting her skills with master frame builder <a href="http://en.wikipedia.org/wiki/Koichi_Yamaguchi">Koichi Yamaguchi</a>, she now applies this knowledge to <a href="http://en.wikipedia.org/wiki/Lugged_steel_frame_construction" title="Lugged steel frame construction - Wikipedia, the free encyclopedia">lugged</a> and <a href="http://en.wikipedia.org/wiki/Brazing" title="Brazing - Wikipedia, the free encyclopedia">fillet brazed</a> <a href="http://en.wikipedia.org/wiki/Bicycle_frame#Steel" title="Bicycle frame - Wikipedia, the free encyclopedia">steel frame sets</a>. Each one custom made with purpose, fit and love in mind.</p>
      <p>When not fabricating frames, Megan is often track racing, road riding, or working part time at the Los Angeles Bicycle Coalition. Being immersed in bicycles all day in multiple ways translates into an omniscient approach to building that is reflected in every detail of her finished work. Megan&rsquo;s break from the cycling world is spent with her big dogs that share her love of the artisian life and a good walk.</p>
    },
    :talk => {
      :slug        => "making-bikes-work",
      :title       => "Making Bikes Work",
      :description => %Q{ <p>After quitting a corporate job to ride bikes down the West coast of the US, Megan Dean returned knowing she couldn&rsquo;t go back. Through various bicycling related jobs she eventually found an affinity for turning a pile of steel tubes into a functioning piece of art. In this talk, Megan will regal the audience with extreme bike dork stoke.</p> },
    },
    :video => {
      :youtube       => "rsf7C2GyH0Y",
      :canonical_url => "http://confreaks.com/videos/2417-fhc3-making-bikes-work"
    }
  },
  {
    :name => "Peter Young",
    :bio  => %Q{ <p>From his origins in Silicon Valley, Peter Young has worn the hat of activist, punk rocker, fugitive, hobo, speaker, author, entrepreneur, eco-terrorist, publisher, prisoner, and purveyor of unpopular opinions. He is a contributor, founder, and guilty party behind many projects guided by principles of freedom for the self and all life, many of which are anonymous and none of which will be listed here. Above (almost) all of them, he is most proud of heeding, almost without deviation, the advice once given to him personally by <a href="http://en.wikipedia.org/wiki/Bill_Nye" title="Bill Nye - Wikipedia, the free encyclopedia">Bill Nye</a>: &ldquo;Peter, don't ever work for another man&rdquo;.</p> },
    :talk => {
      :slug        => "fugitives-have-more-fun",
      :title       => "Fugitives Have More Fun: Confessions of a Wanted Eco-Terrorist",
      :description => %Q{
        <p>Convicted &ldquo;eco-terrorist&rdquo; and former fugitive tells his story &mdash; the whole story &mdash; for the first time.</p>
        <p>In 1997, after <a href="http://en.wikipedia.org/wiki/Peter_Daniel_Young" title="Peter Daniel Young">Peter Young</a> was charged with <a href="http://en.wikipedia.org/wiki/Animal_Enterprise_Terrorism_Act" title="Animal Enterprise Terrorism Act">Animal Enterprise Terrorism</a> for freeing thousands of mink from fur farms, he was faced with a decision: submit to the court and face a possible life sentence, or run for it.</p>
        <p>He chose the second one.</p>
        <p>In an attempt to live his life to the fullest before the government took it away, Young spent 8 years perfecting the art (and science) of living well as a wanted man. For years lawyers told him never to discuss his years as a fugitive, and he never has - until now. From freight trains to book tours, these are the stories of one man's attempts to live a lifetime of adventure before a possible lifetime in prison.</p>
      },
    },
    :video => {
      :youtube       => "JZaaYu3wSPo",
      :canonical_url => "http://confreaks.com/videos/2418-fhc3-fugitives-have-more-fun-confessions-of-a-wanted-eco-terrorist"
    }
  }
]

# fhc3 people + talks
people_3.each do |person|
  slug = person[:name].downcase.gsub(/\s/, "_")

  speaker = Person.create!(
    :name       => person[:name],
    :bio        => person[:bio],
    :image      => "http://farmhouse.la/images/speakers/#{slug}/#{slug}.jpg",
    :staff      => false,
    :organizer  => false
  )

  talk = Talk.create!(
    :conf_id      => farmhouse_conf_3.id,
    :title        => person[:talk][:title],
    :description  => person[:talk][:description],
    :slug         => person[:talk][:slug]
  )

  talk.people << speaker

  video = Video.create!(
    :conf_id          => farmhouse_conf_3.id,
    :talk_id          => talk.id,
    :caption          => talk.description,
    :videographer     => "Nate Cornett, Austin Brown and Omar de Armas",
    :youtube          => person[:video][:youtube],
    :canonical_url    => person[:video][:canonical_url]
  )

  talk.videos << video
end

# fhc3 alumni talks
# Sean Bonner
fhc3_sean_talk = Talk.where(:slug => "sean-bonner").first
fhc3_sean_video = Video.create!(
  :conf_id          => farmhouse_conf_3.id,
  :talk_id          => fhc3_sean_talk.id,
  :caption          => fhc3_sean_talk.description,
  :videographer     => "Nate Cornett, Austin Brown and Omar de Armas",
  :youtube          => "_b9G0sqZzUc",
  :canonical_url    => "http://confreaks.com/videos/2419-fhc3-alumni-follow-up-sean-bonner"
)
fhc3_sean_talk.videos << fhc3_sean_video

# Tara Brown
fhc3_tara_talk = Talk.where(:slug => "mapping-the-la-tech-scene").first
fhc3_tara_video = Video.create!(
  :conf_id          => farmhouse_conf_3.id,
  :talk_id          => fhc3_tara_talk.id,
  :caption          => fhc3_tara_talk.description,
  :videographer     => "Nate Cornett, Austin Brown and Omar de Armas",
  :youtube          => "BNP_FGm_Vlg",
  :canonical_url    => "http://confreaks.com/videos/2420-fhc3-alumni-follow-up-tara-brown"
)
fhc3_tara_talk.videos << fhc3_tara_video

# Mitch Artman
fhc3_mitch_talk = Talk.where(:slug => "falling-off-the-map-skid-row-life-cycle").first
fhc3_mitch_video = Video.create!(
  :conf_id          => farmhouse_conf_3.id,
  :talk_id          => fhc3_mitch_talk.id,
  :caption          => fhc3_mitch_talk.description,
  :videographer     => "Nate Cornett, Austin Brown and Omar de Armas",
  :youtube          => "Gcv1avqHzaw",
  :canonical_url    => "http://confreaks.com/videos/2421-fhc3-alumni-follow-up-mitch-artman"
)
fhc3_mitch_talk.videos << fhc3_mitch_video





# farmhouse conf 4, 2013
farmhouse_conf_4 = Conf.create!(
  :name             => "Farmhouse Conf 4",
  :subtitle         => "<b>Future</b> Stories Under an Avocado Tree in Hollywood, California",
  :year             => 2013,
  :starts_at        => DateTime.parse("2013-05-04 10:00"),
  :ends_at          => DateTime.parse("2013-05-04 23:00"),
  :location_id      => location.id,
  :twitter          => "farmhouse",
  :theme            => "Future",
  :registration_url => "https://farmhouse.eventwax.com/farmhouse-conf-4/register/"
)


people_4 = [
  {
    :name => "Jacob Appelbaum",
    :bio  => %Q{
      <p>Jacob Appelbaum works as a photographer, and as a developer and researcher with The Tor Project. He trains interested parties globally on how to effectively use and contribute to the Tor network.</p>

      <p>He is a founding member of the hacklab Noisebridge in San Francisco where he indulges his interests in magnetics, cryptography and consensus based governance.</p>

      <p>He is also a photographer and ambassador for the art group monochrom.</p>
    },
    :talk => {
      :slug        => "cointelpro-past-present-and-our-shared-future",
      :title       => "COINTELPRO &mdash; Past, Present and Our Shared Future",
      :description => %Q{
        <p>Thanks to the brave efforts of an anonymous group known only as the <a href="https://en.wikipedia.org/wiki/Citizens%27_Commission_to_Investigate_the_FBI" title="Citizens' Commission to Investigate the FBI - Wikipedia, the free encyclopedia">Citizens&rsquo; Commission to Investigate the FBI</a> a sustained political campaign known as <a href="http://en.wikipedia.org/wiki/COINTELPRO" title="COINTELPRO - Wikipedia, the free encyclopedia">COINTELPRO/Counter Intelligence Program</a> came to light in the 1970s. The FBI&rsquo;s stated goal was &ldquo;expose, disrupt, misdirect, or otherwise neutralize&rdquo; groups that they targeted.</p>

        <p>In the 1975, <a href="http://en.wikipedia.org/wiki/Church_Committee" title="Church Committee - Wikipedia, the free encyclopedia">the Church Committee</a>, also known by its more formal name of the &ldquo;United States Senate Select Committee to Study Governmental Operations with Respect to Intelligence Activities&rdquo; was formed in response to the leaks, Watergate and other activities revealed to the public. It sent waves through the so-called law enforcement and intelligence world as it attempted to reign in the abuses of power.</p>

        <p>This talk will discuss the background of COINTELPRO, some of the results of the Church Committee and the current state of new programs that are achieving similar results as the original COINTELPRO. I&rsquo;ll discuss my own personal experiences, some of my coping strategies and other issues relating to my association with WikiLeaks.</p>
      },
    },
    :video => {
      :youtube       => "3ftfEXxFC4Q",
      :canonical_url => "http://confreaks.com/videos/2505-farmhouseconf4-cointelpro-past-present-and-our-shared-future"
    }
  },
  {
    :name => "Starlee Kine",
    :bio  => %Q{
      <p><a href="https://twitter.com/StarleeKine">Starlee Kine</a> is a radio producer and writer. She is a regular contributor to This American Life. She loves very good or very bad television. She writes about the good shows at <a href="http://www.capitalnewyork.com/article/culture/2013/04/8529340/don-draper-hollow-man" title="Don Draper, the Hollow Man | Capital New York">Capital New York</a> and the bad ones at <a href="http://www.vulture.com/2013/04/following-recap-season-1-the-end-is-near.html" title="The Following Recap: Take My Wife, Please -- Vulture">Vulture</a>. She&rsquo;s co-created an animated series <a href="http://www.hulu.com/watch/100046" title="Watch Starlee &amp; Arthur Review | Creative Process online | Free | Hulu">"Starlee and Arthur Review"</a> with illustrator Arthur Jones, designed a cutting board for the <a href="http://www.thethingquarterly.com/issue-10-starlee-kine.html" title="">Thing Quarterly</a> and written a <a href="http://www.thisamericanlife.org/radio-archives/episode/339/break-up" title="Break-Up | This American Life">break-up song with the guidance of Phil Collins</a>. She is working on her first book, It IS Your Fault, a series of essays on the self-help industry as well as a new radio show about mysteries.</p>
    },
    :talk => {
      :slug        => "past-present-future-tense",
      :title       => "Past, Present, Future; Tense.",
      :description => %Q{
        <p>An attempt to get to the bottom of whether the future we were promised as kids &mdash; flying cars, emotionally fragile domestic robots, video phones, quantum leaping &mdash; is better, worse or pretty close to the one we'll actually get.</p>
      },
    },
    :video => {
      :youtube       => "vAHiloN7apQ",
      :canonical_url => "http://confreaks.com/videos/2502-farmhouseconf4-past-present-future-tense"
    }
  },
  {
    :name => "Adam Lisagor",
    :bio  => %Q{
      <p>Trained as a filmmaker, but enamored of technology, Adam Lisagor started his company Sandwich Video somewhat by accident in late 2010 to address a need for compelling video in the tech industry. His first video was shot in his backyard with no crew, for the purpose of demonstrating and promoting his own iPhone app. With the positive reception of the video, he quickly discovered a hunger in the startup and corporate world for video that could engage as well as inform. And the work started rolling in.</p>

      <p>He&rsquo;s made a name for himself making video for innovative companies like Square, Summly, Flipboard, Airbnb, eBay, Rdio, and others, who have (by some incredible luck) embraced his unconventional methods of promotional storytelling.</p>

      <p>Above all else, he&rsquo;s a product man who gets excited about good products, and wants to tell you all about them.</p>
    },
    :talk => {
      :slug        => "the-children-are-our-future",
      :title       => "The Children Are Our Future",
      :description => %Q{ <p>In five years&rsquo; time, kids will look at everything you and I are making today and think it&rsquo;s unconscionably lame, and if you don&rsquo;t think that&rsquo;s the most fun thing in the world then I don&rsquo;t know what.</p> },
    },
    :video => {
      :youtube       => "SQPMfK275UI",
      :canonical_url => "http://confreaks.com/videos/2497-farmhouseconf4-the-children-are-our-future"
    }
  },
  {
    :name => "Erika Brooks Adickman",
    :bio  => %Q{
      <p>Erika Brooks Adickman<sup>*</sup> is a monologist, performer and creator living in Los Angeles. She is also the host of Idolator.com&rsquo;s &lsquo;At Your Request&rsquo;. Her love of pop culture led to the creation of a hand-drawn web series &lsquo;Pop Waffle&rsquo;, an interactive screening event Troop Beverly Hills: The Experience and the website &lsquo;Oh Crap. My Parents Joined Facebook&rsquo;.</p>

      <p>Erika has loved performing stories about her life and family since she won a school-wide storytelling contest at eight-years-old. However, her fascination with TV and 80s movies led her to film school at NYU. Her goal is to continue to pour herself into ideas that excite her &mdash; and to master all the hip-hop dance tutorials she obsessively watches on YouTube.</p>

      <p>* &mdash; rhymes with &ldquo;attic fan&rdquo;.</p>
    },
    :talk => {
      :slug        => "a-neurotic-gal-attempts-a-fearless-look-into-the-future",
      :title       => "A Neurotic Gal Attempts A Fearless Look Into The Future",
      :description => %Q{ <p>If you want to know about the future, ask a neurotic person. No one thinks about the future more than they do.</p> },
    },
    :video => {
      :youtube       => "VDHDTujrUhs",
      :canonical_url => "http://confreaks.com/videos/2499-farmhouseconf4-a-neurotic-gal-attempts-a-fearless-look-into-the-future"
    }
  },
  {
    :name => "Zach Klein",
    :bio  => %Q{
      <p>Zach Klein is co-founder of DIY, a movement for kids to learn skills, though he&rsquo;s also known for co-founding and once designing Vimeo. He&rsquo;s a partner at Founder Collective, the seed-stage venture capital firm based in New York City, and formerly a faculty member at the School of Visual Arts&rsquo; MFA program in Interaction Design. He&rsquo;s passionate about communities, homesteading, self-reliance, and creative literacy.</p>
    },
    :talk => {
      :slug        => "we-will-build-offline-in-the-future",
      :title       => "We Will Build Offline in the Future",
      :description => %Q{ <p>We&rsquo;re the first generation to grow up online and soon we&rsquo;ll inherit the physical world.</p> },
    },
    :video => {
      :youtube       => "O4C4-l8w80E",
      :canonical_url => "http://confreaks.com/videos/2500-farmhouseconf4-we-will-build-offline-in-the-future"
    }
  },
  {
    :name => "Jessica Lord",
    :bio  => %Q{
      <p>Jessica Lord is mostly an architect and urban designer, previously for the City of Boston, who spent 2012 as a Code for America Fellow and is currently still (willingly) swimming in JavaScript in the Bay area.</p>

      <p>Hyper currently, she's working on a JavaScript grant project for Mozilla-Knight Foundation's Open News, lending a hand with Knight's Open Gov News Challenge, building hacker skills at <a href="http://DIY.org">DIY.org</a>.</p>
    },
    :talk => {
      :slug        => "future-commonwealth",
      :title       => "Future Commonwealth",
      :description => %Q{
        <p>What does a city of the future look like, what are the people in it like and who runs it? How far behind are we right now?</p>
      },
    },
    :video => {
      :youtube       => "8yrLK2ZjnxM",
      :canonical_url => "http://confreaks.com/videos/2496-farmhouseconf4-future-commonwealth"
    }
  },
  {
    :name => "Ron Evans",
    :bio  => %Q{
      <p><a href="https://twitter.com/deadprogram">Ron Evans</a> is a well-known software developer who has been very active in the free and open source community for over 20 years. As ringleader of The Hybrid Group, he has been helping clients solve some of their most difficult technical and business problems. Ron has been a very active speaker, presenting at conferences such as RubyConf, FutureRuby, Ignite, 140 THE Twitter Conference, Los Angeles Ruby Conference, Conferencia Rails, and MagmaConf. He was featured in Computerworld Magazine in the article "Rock Star Coders" for his popular blog post "I'd Rather Be A Jazz Programmer", as well as having written articles for MSNBC, BYTE Magazine, and the Direct Marketing Association, Ron is an active code contributor to many open source projects, including being the creator of the award-winning KidsRuby, free software to help teach Ruby programming to kids.</p>
    },
    :talk => {
      :slug        => "future-current-the-robot-r-evolution",
      :title       => "Future Current: The Robot (R)Evolution",
      :description => %Q{ <p>This is a talk about robots.<br/>This is a talk about humanity.<br/>This is a talk about technology.<br/>This is a talk about evolution.<br/>This is a talk about the future.<br/>This is a talk about atemporality.<br/>This is a talk about robots.</p> },
    },
    :video => {
      :youtube       => "KQ4QJ5G30Wg",
      :canonical_url => "http://confreaks.com/videos/2503-farmhouseconf4-future-current-the-robot-r-evolution"
    }
  },
  {
    :name => "Colleen Jordan",
    :bio  => %Q{
      <p>Colleen was born in rural Louisiana and spent her childhood moving around the country. Today she works as a designer and maker who likes to create objects that make life more interesting. After graduating from Georgia Tech, she founded her company, Wearable Planter, creating 3D printed jewelry. She&rsquo;s exhibited her work and spoken publicly about the present state of digital creation.</p>
    },
    :talk => {
      :slug        => "what-we-will-make-in-the-future",
      :title       => "What We Will Make in the Future",
      :description => %Q{
        <p>Emerging manufacturing techniques like 3D printing are shifting the way that we make, buy, and consume products. We&rsquo;re still in an era of mass production, but it is giving way to mass customization of consumer goods. What will we make in the future when we can make anything we wish on demand?</p>
      },
    },
    :video => {
      :youtube       => "Uska9uuDTno",
      :canonical_url => "http://confreaks.com/videos/2501-farmhouseconf4-what-we-will-make-in-the-future"
    }
  },
  {
    :name => "Justin Ouellette",
    :bio  => %Q{
      <p>Justin Ouellette was born in Portland, Oregon in 1983. He left college in 2005 to pursue photography in New York City, but wound up falling in with a rough crowd and becoming a software designer instead. In 2008 he created a minimalist web site for sharing music called Muxtape, which exploded in popularity and was eventually shuttered by the RIAA after a spectacular summer of backroom negotiations. He has worked for Vimeo, Betaworks, the New York Times R&amp;D Lab, and currently calls Tumblr home.</p>
    },
    :talk => {
      :slug        => "designing-forever",
      :title       => "Designing Forever",
      :description => %Q{ <p>The future will be inhabited by people who live much longer lives than we know today, lives potentially without end. How will society cope as parts of it begin to think along much longer timescales than ever before? What does it mean for creativity and copyright when creators last as long as their creations? How will the discipline of product design evolve as humans evolve to last forever, and what lessons can we learn today?</p> },
    },
    :video => {
      :youtube       => "YJZ7fF1gSdU",
      :canonical_url => "http://confreaks.com/videos/2495-farmhouseconf4-designing-forever"
    }
  },
  {
    :name => "willowbl00",
    :bio  => %Q{
      <p>willowbl00 got involved with transhumanism in the wilds of university, organizing and moderating discussion groups and writing a thesis on therapy and advancement in medical technology. Later wb0 became an advocate for building the future out of community workshop spaces and educational initiatives, and strengthening that global community through unity. In 2010, they co-launched Geeks Without Bounds as a way for people of the technical persuasion to perform mutual aid in disasters (both the slow and sudden sorts). wb0 continues to organize, facilitate, and interconnect a wide array of folk who have chosen to be active in their lives, from Chaos Congress to Port-au-Prince to the Whitehouse, and has most recently re-entered academia as an affiliate at the Center for Civic Media at MIT. Find this bot just about anywhere on the internet as willowbl00.</p>
    },
    :talk => {
      :slug        => "replacing-uppercase-f-fucked-with-uppercase-future-active-participation-in-response",
      :title       => "Replacing Uppercase &ldquo;F&rdquo; Fucked with Uppercase Future : Active Participation in Response",
      :description => %Q{
        <p><p>Now that the beautiful promise of the internet has worn off, and we understand that it is not inherently equalizing, we can begin to realize our true roles as activists in closing social, economic, and opportunity gaps. The protocols we once thought were neutral are being used by established hierarchies to reenforce and strengthen their holds, to further detriments to the people at the bottom of those structures. willowbl00 will tell a story of hackerspaces and education, of technology in disaster response and civic voices, of tempered negotiations and paced arms races. With lots of examples of deployed initiatives, their downfalls and triumphs, this talk shows the future that is being built to prevent and amend continued atrocities. The future is here, but we have to fight to make it evenly distributed.</p></p>
      },
    },
    :video => {
      :youtube       => "jePY1xFrJuk",
      :canonical_url => "http://confreaks.com/videos/2504-farmhouseconf4-replacing-uppercase-f-fucked-with-uppercase-future-active-participation-in-response"
    }
  }
]


# fhc4 people + talks
people_4.each do |person|
  slug = person[:name].downcase.gsub(/\s/, "_")

  speaker = Person.create!(
    :name       => person[:name],
    :bio        => person[:bio],
    :image      => "http://farmhouse.la/images/speakers/#{slug}/#{slug}.jpg",
    :staff      => false,
    :organizer  => false
  )

  talk = Talk.create!(
    :conf_id      => farmhouse_conf_4.id,
    :title        => person[:talk][:title],
    :description  => person[:talk][:description],
    :slug         => person[:talk][:slug]
  )

  talk.people << speaker

  video = Video.create!(
    :conf_id          => farmhouse_conf_4.id,
    :talk_id          => talk.id,
    :caption          => talk.description,
    :videographer     => "Cindy Denison",
    :youtube          => person[:video][:youtube],
    :canonical_url    => person[:video][:canonical_url]
  )

  talk.videos << video
end


# fhc4 alumni talks
# Tara Brown
fhc4_tara_talk = Talk.where(:slug => "mapping-the-la-tech-scene").first
fhc4_tara_video = Video.create!(
  :conf_id          => farmhouse_conf_4.id,
  :talk_id          => fhc4_tara_talk.id,
  :caption          => fhc4_tara_talk.description,
  :videographer     => "Cindy Denison",
  :youtube          => "tm2JKbDn18Q",
  :canonical_url    => "http://confreaks.com/videos/2508-farmhouseconf4-alumni-follow-up"
)
fhc4_tara_talk.videos << fhc4_tara_video

# Mitch Artman
fhc4_mitch_talk = Talk.where(:slug => "falling-off-the-map-skid-row-life-cycle").first
fhc4_mitch_video = Video.create!(
  :conf_id          => farmhouse_conf_4.id,
  :talk_id          => fhc4_mitch_talk.id,
  :caption          => fhc4_mitch_talk.description,
  :videographer     => "Cindy Denison",
  :youtube          => "P-57TYxfY-U",
  :canonical_url    => "http://confreaks.com/videos/2507-farmhouseconf4-alumni-follow-up"
)
fhc4_mitch_talk.videos << fhc4_mitch_video

# Eric Gradman
fhc4_eric_talk = Talk.where(:slug => "theres-no-map-for-inventiveness").first
fhc4_eric_video = Video.create!(
  :conf_id          => farmhouse_conf_4.id,
  :talk_id          => fhc4_eric_talk.id,
  :caption          => fhc4_eric_talk.description,
  :videographer     => "Cindy Denison",
  :youtube          => "3AduRok11Jg",
  :canonical_url    => "http://confreaks.com/videos/2498-farmhouseconf4-alumni-follow-up"
)
fhc4_eric_talk.videos << fhc4_eric_video

# Megan Dean
fhc4_megan_talk = Talk.where(:slug => "making-bikes-work").first
fhc4_megan_video = Video.create!(
  :conf_id          => farmhouse_conf_4.id,
  :talk_id          => fhc4_megan_talk.id,
  :caption          => fhc4_megan_talk.description,
  :videographer     => "Cindy Denison",
  :youtube          => "ZgMNk-jJlgI",
  :canonical_url    => "http://confreaks.com/videos/2506-farmhouseconf4-alumni-follow-up"
)
fhc4_megan_talk.videos << fhc4_megan_video








# farmhouse conf 5, 2013
farmhouse_conf_5 = Conf.create!(
  :name             => "Farmhouse Conf 5",
  :subtitle         => "Stories About The <b>Collapse</b> Under an Avocado Tree in Hollywood, California",
  :year             => 2013,
  :starts_at        => DateTime.parse("2013-11-02 10:00"),
  :ends_at          => DateTime.parse("2013-11-02 23:00"),
  :location_id      => location.id,
  :twitter          => "farmhouse",
  :theme            => "Collapse",
  :registration_url => "https://farmhouse.eventwax.com/farmhouse-conf-5/register/"
)





people_5 = [
  {
    :name => "Claire Evans",
    :bio  => %Q{
      <p>Claire L. Evans is a writer and artist working in Los Angeles, California. Her &ldquo;day job&rdquo; is as the singer and co-author of the conceptual disco-pop band YACHT, which recently released its fifth album Shangri-La, on DFA Records. A science journalist and science fiction critic, her blog, Universe, addressing synchronies between art, science, technology, and the cultural world, was recently anthologized in Best Science Writing on the Web 2012 (Scientific American Books/Farrar, Straus & Giroux), and she regularly participates in panels, conferences, and screenings on the subject of science and culture. She has performed earnestly cosmic presentations at the Kitchen, MoMA PS1, and the Hirshhorn Museum, spoken about extraterrestrial life at the Rubin Museum&rsquo;s BRAINWAVE series, and co-authored a book on interdisciplinarity in the arts, NA/SA: New Art Science Affinities. A collected book of her essays, High Frontiers, is now available from Publication Studio.</p>
    },
    :talk => {
      :slug        => "claire-evans-tba",
      :title       => "TBA",
      :description => %Q{ <p></p> },
    }
  },
  {
    :name => "Richard Heinberg",
    :bio  => %Q{
      <p>Richard Heinberg is the author of ten books including:</p>

      <ul>
        <li><i>The End of Growth</i> (August 2011)</li>
        <li><i>The Post Carbon Reader</i> (2010) (editor)</li>
        <li><i>Blackout: Coal, Climate, and the Last Energy Crisis</i> (2009)</li>
        <li><i>Peak Everything: Waking Up to the Century of Declines</i> (2007)</li>
        <li><i>The Oil Depletion Protocol: A Plan to Avert Oil Wars, Terrorism &amp; Economic Collapse</i> (2006)</li>
        <li><i>Powerdown: Options &amp; Actions for a Post-Carbon World</i> (2004)</li>
        <li><i>The Party's Over: Oil, War &amp; the Fate of Industrial Societies</i> (2003)</li>
      </ul>

      <p>Richard is a Senior Fellow of the Post Carbon Institute and is widely regarded as one of the world&rsquo;s foremost Peak Oil educators. He has authored scores of essays and articles that have appeared in such journals as Nature, The American Prospect, Public Policy Research, Quarterly Review, The Ecologist, Resurgence, The Futurist, European Business Review, Earth Island Journal, Yes!, and The Sun; and on web sites such as <a href="http://EnergyBulletin.net" title="Resilience.org">EnergyBulletin.net</a>, <a href="http://TheOilDrum.com" title="The Oil Drum | Discussions about Energy and Our Future">TheOilDrum.com</a>, <a href="http://Alternet.org" title="Alternet | Alternative News and Information">Alternet.org</a>, <a href="http://ProjectCensored.com" title="ProjectCensored.com: The Leading Human Rights Site on the Net">ProjectCensored.com</a>, and <a href="http://Counterpunch.com" title="Counterpunch: Tells the Facts, Names the Names">Counterpunch.com</a>.</p>

      <p>He has been quoted in Time Magazine and has spoken to hundreds of audiences in 14 countries, including members of the European Parliament.  He has appeared in many film and television documentaries, including Leonardo DiCaprio&rsquo;s 11th Hour, is a recipient of the M. King Hubbert Award for Excellence in Energy Education, and in 2012 was appointed to His Majesty the King of Bhutan's International Expert Working Group for the New Development Paradigm initiative.</p>

      <p>Richard&rsquo;s animations <a href="http://www.youtube.com/watch?v=4uKgU7krWzE" title="DON&#39;T WORRY, DRIVE ON: Fossil Fools &amp; Fracking Lies - YouTube"><i>Don&rsquo;t Worry, Drive On</i></a>, <a href="http://www.youtube.com/watch?v=EQqDS9wGsxQ" title="Who Killed Economic Growth? - YouTube"><i>Who Killed Economic Growth?</i></a> and <a href="http://www.youtube.com/watch?v=cJ-J91SwP8w" title="300 Years of FOSSIL FUELS in 300 Seconds - YouTube"><i>300 Years of Fossil Fuels in 300 Minutes</i></a> (winner of a YouTubes&rsquo;s/DoGooder Video of the Year Award) have been viewed by 1.5 million people.</p>

      <p>Since 2002, he has delivered more than four hundred lectures to a wide variety of audiences &mdash; from insurance executives to peace activists, from local and national elected officials to Jesuit volunteers.</p>
    },
    :talk => {
      :slug        => "near-term-collapse-why-industrial-society-is-more-vulnerable-than-you-may-think",
      :title       => "Near-Term Collapse: Why Industrial Society Is More Vulnerable Than You May Think",
      :description => %Q{ <p>Rising energy costs, crushing debt burdens, resource depletion, and climate change are converging to undermine the global economy. Our political system appears incapable of responding. Previous civilizations have collapsed in the face of similar challenges. What does collapse look like? Is it likely within the next two decades? If so, what should we be doing?</p> },
    }
  },
  {
    :name => "Jessica Hische",
    :bio  => %Q{
      <p><a href="http://jessicahische.is/awesome" title="Jessica Hische - Awesome">Jessica Hische</a> draws type.</p>
    },
    :talk => {
      :slug        => "jessica-hische-tba",
      :title       => "TBA",
      :description => %Q{ <p></p> },
    }
  },
  {
    :name => "John Barnette",
    :bio  => %Q{
      <p><a href="https://github.com/jbarnette">John Barnette</a> works at GitHub. He&rsquo;s slow at delivery speaker bios to conference organizers.</p>
    },
    :talk => {
      :slug        => "total-collapse",
      :title       => "Total Collapse",
      :description => %Q{ <p>John spoke at <a href="http://2011.cascadiaruby.com" title="Cascadia Ruby Conf | Ruby Without Borders | July 29-30 2011">Cascadia Ruby 2011</a> about the dark times. This will be roughly a follow up to <a href="http://confreaks.com/videos/611-cascadiaruby2011-keynote" title="Keynote - John Barnette - Cascadia Ruby 2011">that talk</a>.</p> },
    }
  },
  {
    :name => "Julie Ann Horvath",
    :bio  => %Q{
      <p><a href="http://julieannhorvath.com" title="Julie Ann Horvath is not a robot.">Julie Ann Horvath</a> is @nrrrdcore on <a href="https://github.com/nrrrdcore/">GitHub</a>, <a href="https://twitter.com/nrrrdcore/">Twitter</a> et al.</p>
    },
    :talk => {
      :slug        => "julie-ann-horvath-tba",
      :title       => "TBA",
      :description => %Q{ <p></p> },
    }
  },
  {
    :name => "Drew Hoolhorst",
    :bio  => %Q{
      <p>Drew Hoolhorst is <a href="http://www.rocket-shoes.com/about/" title="hi, i&#8217;m drew.">@drewber</a></p>
    },
    :talk => {
      :slug        => "drew-hoolhorst-tba",
      :title       => "TBA",
      :description => %Q{ <p></p> },
    }
  },
  {
    :name => "Eleanor Saitta",
    :bio  => %Q{
      <p><a href="http://dymaxion.org" title="Dymaxion">Eleanor Saitta</a> is a hacker, designer, artist, writer, and barbarian. She makes a living and a vocation of understanding how complex, transdisciplinary systems operate and redesigning them to work, or at least fail, better. Among other things, Eleanor is a co-founder of <a href="http://octotrike.org" title="Trike: Trike">the Trike project</a> and the <a href="http://const.is">Constitutional Analysis Support Team</a>, Technical Director at the <a href="http://immi.is">International Modern Media Institute</a>, Principal Security Engineer at the <a href="http://openitp.org" title="openitp.org">Open Internet Tools Project</a>, a member of the advisory board at <a href="http://gwob.org" title="Geeks Without Bounds">Geeks Without Bounds</a>, a contributor to the <a href="http://briar.sf.net" title="Briar: A Secure News and Discussion System">Briar project</a>, and a Senior Security Associate with <a href="http://stachliu.com" title="Home &laquo; Stach &amp; Liu">Stach &amp; Liu</a>. She is nomadic and lives mostly in airports and occasionally in New York, London, and Stockholm. She can be found at <a href="http://dymaxion.org" title="Dymaxion">http://dymaxion.org</a> and on Twitter as <a href="https://twitter.com/dymaxion">@dymaxion</a>.</p>
    },
    :talk => {
      :slug        => "eleanor-saitta-tba",
      :title       => "TBA",
      :description => %Q{ <p></p> },
    }
  },
  {
    :name => "Nirvan Mullick",
    :bio  => %Q{
      <p><a href="http://twitter.com/nirvan">Nirvan</a> is an LA based filmmaker, creative consultant, speaker, and entrepreneur. <a href="http://nirvan.com">Nirvan</a> began teaching himself animation while studying philosophy at <a href="http://www.ncf.edu/">New College</a>. He went on to earn an MFA in Experimental Animation from <a href="http://www.calarts.com/">CalArts</a>. Nirvan's animated short films have screened in festivals worldwide, winning numerous awards. In 2001, Nirvan began an ongoing collaborative experiment called <a href="http://the1secondfilm.com/">The 1 Second Film</a>, which became among the first crowdfunded films. In 2012, Nirvan directed <a href="http://www.cainesarcade.com">Caine's Arcade</a>, an 11-minute short film that became a viral phenomenon, receiving over 8 million views and sparking a global movement of cardoard creativity in kids around the world. After Caine's Arcade, Nirvan founded the non-profit <a href="http://imagination.is">Imagination Foundation</a> to find, foster, and fund creativity and entrepreneurship in kids. Nirvan has received the Dan Eldon <span>Creative Activist Award and the Innovation in Action award. </span>Nirvan is a partner at <a href="http://facebook.com/interconnected.is">Interconnected</a>, consults with companies and non-profits, serves on the board of <a href="http://www.CicLAvia.org">CicLAvia</a>, and tries to keep up with his garden and email.</p>
    },
    :talk => {
      :slug        => "collapse-of-an-education-system-not-designed-for-creativity",
      :title       => "Collapse of an Education System Not Designed for Creativity",
      :description => %Q{ <p></p> },
    }
  },
  {
    :name => "Barefoot Ted",
    :bio  => %Q{
      <p><a href="http://barefootted.com" title="Barefoot Ted's Adventures">Barefoot Ted</a> is an independent athlete committed to re-discovering primal natural human capacities and encouraging others to do the same.</p>
      <p>Having spent the last 10 years focused on mastering barefoot long distance running, BFT now focuses on sharing his insights through speaking engagements, social networking and acting as the Spokesmonkey for <a href="http://www.lunasandals.com">LUNA</a>, the adventure sandal company he founded in Seattle.</p>
      <p>Many have come to know about him through the pages of <a href="http://www.chrismcdougall.com" title="Christopher McDougall | Born to Run | National Bestseller">Christopher McDougall's</a> best-selling book "<a href="http://www.amazon.com/Born-Run-Superathletes-Greatest-Vintage/dp/0307279189" title="Born to Run: A Hidden Tribe, Superathletes, and the Greatest Race the World Has Never Seen: Christopher McDougall: 9780307279187: Amazon.com: Books">Born to Run</a>", a book BFT likes to call his quirky PhD. thesis that he didn't have to write.</p>
      <p>Ted has been featured in numerous articles and frequently interviewed. He enjoys sharing his philosophy of running and life to audiences large and small.</p>
      <p>As "Barefoot Ted", he has played a major role in defining and popularizing the new/old concept of barefoot running and minimalist footwear to a new generation, being an early adopter of the current trend.</p>
      <p>Ted's research and adventures have been regularly shared on his popular blog, <a href="http://barefootted.com">Barefoot Ted's Adventures</a> on his <a href="https://www.facebook.com/barefootted">Facebook Fan Page</a> and on <a href="https://twitter.com/BarefootTed">Twitter</a>. He also hosts an online <a href="http://groups.google.com/group/huaraches?hl=en">forum dedicated to minimalist/barefoot running</a>.</p>
      <p>These days Ted enjoys spreading the news about his favorite sandals and telling stories of his adventures. Projects for 2014 include more Barefoot Ted's Adventures active vacations in Mexico, Turkey and Japan and a LUNA USA TOUR visiting retailers across the country.</p>
    },
    :talk => {
      :slug        => "barefoot-ted-TBA",
      :title       => "Gravitational Collapse, Energetic Wheels, Ape Locomotion: a history",
      :description => %Q{
        <p>A quick look at strategies used by the genus Homo to enhance and extend the joy of mobility past and present.  Starting with the evolution of bipedalism and the radical growth of the brain, I will catalog what I see as the most important behaviors, capacities and inventions that propelled humans into the now..., and I will demonstrate where I think we are going next.</p>
      },
    }
  }
]

# fhc5 people + talks
people_5.each do |person|
  slug = person[:name].downcase.gsub(/\s/, "_")

  speaker = Person.create!(
    :name       => person[:name],
    :bio        => person[:bio],
    :image      => "http://farmhouse.la/images/speakers/#{slug}/#{slug}.jpg",
    :staff      => false,
    :organizer  => false
  )

  talk = Talk.create!(
    :conf_id      => farmhouse_conf_5.id,
    :title        => person[:talk][:title],
    :description  => person[:talk][:description],
    :slug         => person[:talk][:slug]
  )

  talk.people << speaker
end


# sponsors
[
  ["baggu", "http://baggubag.com"],
  ["blueboxgroup", "http://bluebox.net"],
  ["c2o", "http://c2o-cocowater.com"],
  ["carbon-five", "http://carbonfive.com"],
  ["claras-cakes", "http://ClaraCakes.com"],
  ["cloud-city", "http://cloudcitydevelopment.com"],
  ["code-climate", "http://codeclimate.com"],
  ["crimethinc", "http://crimethinc.com"],
  ["cruzer", "http://cruzerpizza.com"],
  ["doomies", "http://twitter.com/doomies"],
  ["engine-yard", "http://engineyard.com"],
  ["factual", "http://factual.com"],
  ["field-notes", "http://fieldnotesbrand.com"],
  ["g5", "http://getg5.com"],
  ["github", "http://github.com"],
  ["graft-concepts", "http://graftconcepts.com"],
  ["hashicorp", "http://hashicorp.com"],
  ["heroku", "http://heroku.com"],
  ["johnny-cupcakes", "http://johnnycupcakes.com"],
  ["logical-reality-design", "http://lrdesign.com"],
  ["luna-sandals", "http://lunasandals.com"],
  ["mighty-o", "http://mightyo.com"],
  ["moth-attack", "http://mothattack.com"],
  ["native-foods", "http://nativefoods.com"],
  ["new-relic", "http://newrelic.com"],
  ["noisivelvet", "http://noisivelvet.com"],
  ["okcupid-labs", "http://okcupidlabs.com"],
  ["pac-nw-kale-chips", "http://pacifickale.com"],
  ["pivotal-labs", "http://pivotallabs.com"],
  ["printstagram", "http://printstagram.com"],
  ["pure-luck", "https://www.facebook.com/pureluckpopup"],
  ["ronalds", "https://google.com/search?q=ronald's+donuts+vegan&tbm=isch"],
  ["seed-and-spark", "http://seedandspark.com"],
  ["sendgrid", "http://sendgrid.com"],
  ["spacex", "http://spacex.com"],
  ["spire-io", "http://spire.io"],
  ["square", "http://squareup.com"],
  ["the-frontier-group", "http://thefrontiergroup.com.au"],
  ["the-hub-la", "http://thehubla.com"],
  ["the-hybrid-group", "http://hybridgroup.com"],
  ["thunderbolt-labs", "http://thunderboltlabs.com"],
  ["tilde", "http://tilde.io"],
  ["tonx", "http://tonx.org"],
  ["uncharted", "http://uncharteddigital.com"],
  ["veggie-grill", "http://veggiegrill.com"],
  ["zaarly", "http://zaarly.com"],
  ["znp-industries", ""]
].each do |sponsor|
  Sponsor.create!(:slug => sponsor.first, :url => sponsor.last)
end


# sponsorships
conf_2 = Conf.find(2)
conf_3 = Conf.find(3)
conf_4 = Conf.find(4)
conf_5 = Conf.find(5)

# levels
# acknowledgment party standard food goodie scholarship


# FHC2 sponsorships
[
  [:party,    %w(engine-yard sendgrid)],
  [:standard, %w(okcupid-labs square github blueboxgroup spire-io the-hybrid-group zaarly znp-industries factual)],
  [:food,     %w(doomies claras-cakes veggie-grill pac-nw-kale-chips cruzer c2o tonx)],
  [:goodie,   %w(field-notes heroku spacex crimethinc baggu luna-sandals)]
].each do |level|
  level.last.each do |sponsor|
    Sponsorship.create!(
      :conf_id    => conf_2.id,
      :sponsor_id => Sponsor.where(:slug => sponsor).first.id,
      :level      => level.first
    )
  end
end

# FHC3 sponsorships
[
  [:party,       %w(github)],
  [:standard,    %w(okcupid-labs the-hybrid-group the-hub-la cloud-city logical-reality-design code-climate the-frontier-group)],
  [:food,        %w(claras-cakes native-foods cruzer tonx)],
  [:goodie,      %w(johnny-cupcakes moth-attack graft-concepts luna-sandals)],
  [:scholarship, %w(noisivelvet)]
].each do |level|
  level.last.each do |sponsor|
    Sponsorship.create!(
      :conf_id    => conf_3.id,
      :sponsor_id => Sponsor.where(:slug => sponsor).first.id,
      :level      => level.first
    )
  end
end

# FHC4 sponsorships
[
  [:party,       %w(new-relic)],
  [:standard,    %w(github the-hybrid-group the-hub-la heroku hashicorp pivotal-labs g5 tilde)],
  [:food,        %w(claras-cakes tonx native-foods thunderbolt-labs mighty-o cruzer)],
  [:goodie,      %w(luna-sandals crimethinc field-notes printstagram)],
  [:scholarship, %w(noisivelvet uncharted)]
].each do |level|
  level.last.each do |sponsor|
    Sponsorship.create!(
      :conf_id    => conf_4.id,
      :sponsor_id => Sponsor.where(:slug => sponsor).first.id,
      :level      => level.first
    )
  end
end

# FHC5 sponsorships
[
  [:party,       %w(github pivotal-labs carbon-five)],
  [:standard,    %w(the-hybrid-group tilde the-hub-la cloud-city seed-and-spark)],
  [:food,        %w(ronalds tonx veggie-grill pac-nw-kale-chips claras-cakes pure-luck thunderbolt-labs)],
  [:goodie,      %w(luna-sandals crimethinc field-notes)],
  [:scholarship, %w(noisivelvet)]
].each do |level|
  level.last.each do |sponsor|
    Sponsorship.create!(
      :conf_id    => conf_5.id,
      :sponsor_id => Sponsor.where(:slug => sponsor).first.id,
      :level      => level.first
    )
  end
end














# podcast
episodes = [
  {
    :title            => "JSON vs HTML + Microformats",
    :subtitle         => "On the idea of serving HTML from your API",
    :published_at     => Time.parse("2012-10-08T21:13 -0700"),
    :summary          => %Q{<a href="http://iamshane.com" title="The Internet Home Site of Shane Becker">Shane Becker</a> and <a href="http://SteveKlabnik.com" title="Steve Klabnik">Steve Klabnik</a> discuss using <a href="http://www.json.org" title="JSON">JSON</a> vs HTML + <a href="http://microformats.org" title="Microformats">Microformats</a> as API output.},
    :season           => 1,
    :episode          => 1,
    :url              => "http://farmhouse.s3.amazonaws.com/podcast/S01/01%20JSON%20vs%20HTML%20%2B%20Microformats.mp3",
    :authors          => "Shane Becker and Steve Klabnik",
    :itunes_summary   => "Shane Becker and Steve Klabnik discuss using JSON vs HTML + Microformats as API output.",
    :enclosure_length => "45212172",
    :duration         => "22:51",
    :keywords         => "api, computer science, farmhouse, hollywood, homesteading, html, hypermedia, microformats, nerdery, web",
    :show_notes       => %Q{
      <a href="https://twitter.com/veganstraightedge/status/255149033834823680">Shane's initial question tweet</a>
      <a href="http://Microformats.org" title="Microformats">Microformats.org</a>
      <a href="http://JSON.org" title="JSON">JSON.org</a>
      <a href="https://developer.mozilla.org/en-US/docs/HTML_in_XMLHttpRequest"><i>HTML in XMLHttpRequest</i> on the Mozilla Developer Network</a>
    }
  },
  {
    :title            => %Q{Push vs "Pull"},
    :subtitle         => "On the respective merits of pushing and polling",
    :published_at     => Time.parse("Mon Oct 15 19:29:16 -0700 2012"),
    :summary          => %Q{<a href="http://iamshane.com" title="The Internet Home Site of Shane Becker">Shane Becker</a> and <a href="http://SteveKlabnik.com" title="Steve Klabnik">Steve Klabnik</a> discuss the merits of <b>pushing</b> and <b>polling</b> (which Shane still thinks should be "pulling"). <b>Sponsored by: <a href="https://peepcode.com">PeepCode</a>.</b>},
    :season           => 1,
    :episode          => 2,
    :url              => "http://farmhouse.s3.amazonaws.com/podcast/S01/02%20Push%20vs%20_Pull_.mp3",
    :authors          => "Shane Becker and Steve Klabnik",
    :itunes_summary   => "Shane Becker and Steve Klabnik discuss the difference between pushing and polling and their respective differences. Sponsored by: PeepCode.",
    :enclosure_length => "45212172",
    :duration         => "30:57",
    :keywords         => "api, computer science, farmhouse, hollywood, homesteading, html, hypermedia, microformats, nerdery, web, push, pull, poll, tent, ostatus, rstatus, diaspora",
    :show_notes       => %Q{
      <a href="http://www.youtube.com/watch?v=vCadcBR95oU" title="Salt-N-Pepa - Push It - YouTube">Push It</a>
      <a href="http://en.wikipedia.org/wiki/Push_technology" title="Push technology - Wikipedia, the free encyclopedia">Push</a>
      <a href="http://en.wikipedia.org/wiki/Polling_(computer_science)" title="Polling (computer science) - Wikipedia, the free encyclopedia">Polling</a>
      <a href="http://en.wikipedia.org/wiki/Pull_technology" title="Pull technology - Wikipedia, the free encyclopedia">Pull</a>
      <a href="http://en.wikipedia.org/wiki/Interrupt" title="Interrupt - Wikipedia, the free encyclopedia">Interrupt</a>
      <a href="http://developer.apple.com/library/mac/#documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/ApplePushService/ApplePushService.html" title="Loading&#133;">Apple Push Notification</a>
      <a href="http://tent.io" title="Tent - the decentralized social web">tent.io</a>
      <a href="https://tent.is">Tent.is</a>
      <a href="http://en.wikipedia.org/wiki/Web_cache" title="Web cache - Wikipedia, the free encyclopedia">Caching</a>
      <a href="http://nodejs.org" title="node.js">Node.js</a>
      <a href="http://campfirenow.com" title="Business group chat, file sharing, group decision making: Campfire">Campfire</a>
      <q>&ldquo;<a href="https://twitter.com/dhh/status/251006155906752513">Campfire, to this day, still uses a 3-second poll. And chat was supposed to be the poster-boy example for web sockets and friends. Ha.</a>&rdquo;</q> &mdash; <a href="https://twitter.com/dhh">@dhh</a>
      <a href="http://en.wikipedia.org/wiki/High-frequency_trading" title="High-frequency trading - Wikipedia, the free encyclopedia">High Frequency Trading</a>
      At 9:16 Steve said "a second or <i>less</i>". He meant "a second or <b>more</b>".
      <a href="http://en.wikipedia.org/wiki/Client-server_model">Client Server</a>
      <i><a href="http://www.amazon.com/Weaving-Web-Original-Ultimate-Destiny/dp/006251587X" title="Weaving the Web: The Original Design and Ultimate Destiny of the World Wide Web: Tim Berners-Lee: 9780062515872: Amazon.com: Books">Weaving the Web: The Original Design and Ultimate Destiny of the World Wide Web</a></i> by <a href="http://en.wikipedia.org/wiki/Tim_Berners-Lee" title="Tim Berners-Lee - Wikipedia, the free encyclopedia">Tim Berners-Lee</a>
      <a href="https://google.com/search?q=unique+scaling+requirement">Unique Scaling Requirements</a>
      <a href="https://twitter.com/steveklabnik/">5644 followers</a>
      <q>&ldquo;<a href="https://twitter.com/steveklabnik/status/253609185256816641">hundreds. of thousands. of post requests.</a>&rdquo;</q> &mdash; <a href="https://twitter.com/steveklabnik">@steveklabnik</a>
      <b>Sponsor</b> : <a href="https://peepcode.com">PeepCode</a>
      <b>Sponsor</b> : <a href="https://peepcode.com/products/backbone-js">Backbone Basics</a>
      <b>Sponsor</b> : <a href="https://peepcode.com/products">All (Ruby, Javascript, et al) PeepCodes</a>
      <b>Sponsor</b> : <a href="https://peepcode.com/products/chef-i">Meet Chef</a>
      <b>Sponsor</b> : <a href="https://peepcode.com/products/design-bundle">Design Bundle</a>
      <b>Sponsor</b> : <a href="https://peepcode.com/products/ryan-singer-ux">RYAN SINGER (PART 1) : Sketching</a>
      <b>Sponsor</b> : <a href="https://peepcode.com/products/ryan-singer-ii">RYAN SINGER (PART 2) : HTML/CSS Prototype</a>
      <b>Sponsor</b> : <a href="https://peepcode.com/products/play-by-play-kneath">KYLE NEATH : Enhancing an application</a>
      <b>Sponsor</b> : <a href="https://peepcode.com/products/play-by-play-mrgan">NEVEN MRGAN : Mobile UI</a>
      <a href="http://en.wikipedia.org/wiki/PubSubHubbub" title="PubSubHubbub - Wikipedia, the free encyclopedia">PubSubHubbub on Wikipedia</a>
      <a href="https://code.google.com/p/pubsubhubbub/">PubSubHubbub on Google Code</a>
      <a href="http://pubsubhubbub.appspot.com" title="Hub - PubSubHubbub">PubSubHubbub reference Hub server</a>
      <a href="https://rstat.us">rstat.us</a>
      <a href="http://en.wikipedia.org/wiki/OStatus" title="OStatus - Wikipedia, the free encyclopedia">OStatus</a>
      <a href="http://superfeedr.com" title="Real-time cloud feed parsing - PubSubHubbub, XMPP">Superfeedr</a>
      <a href="http://en.wikipedia.org/wiki/RSS" title="RSS - Wikipedia, the free encyclopedia">RSS</a>
      <a href="http://en.wikipedia.org/wiki/Atom_(standard)" title="Atom (standard) - Wikipedia, the free encyclopedia">ATOM</a>
      <a href="http://steve.vinoski.net/blog/2008/01/05/serendipitous-reuse/" title="Serendipitous Reuse  ::  Steve Vinoski&#8217;s Blog">Serendipitous Reuse</a>
      <a href="https://app.net/">App.net</a>
      <a href="http://identi.ca" title="Public timeline - Identi.ca">identi.ca</a>
      <a href="http://status.net" title="StatusNet">StatusNet</a>
      <a href="http://slashdot.org" title="Slashdot: News for nerds, stuff that matters">Slashdot</a>
      <a href="http://activitystrea.ms" title="Activity Streams - a format for syndicating social activities around the web">Activity Streams</a>
      <a href="https://joindiaspora.com">Diaspora</a>
    }
  },
  {
    :title            => "Puma, Puma, Puma... with a dash of Rubinius",
    :subtitle         => "Puma, the web server. Rubinius, the Ruby implementation.",
    :published_at     => Time.parse("2012-10-25T17:57:23 -0700"),
    :summary          => %Q{<a href="http://iamshane.com" title="The Internet Home Site of Shane Becker">Shane Becker</a> and <a href="http://blog.fallingsnow.net" title="Evan Phoenix">Evan Phoenix</a> discuss using the <a href="http://puma.io" title="A Modern, Concurrent Web Server for Ruby - Puma">Puma web server</a> and <a href="http://rubini.us" title="Rubinius : Use Ruby&#8482;">Rubinius.</a> <b>Sponsored by: <a href="https://CodeClimate.com">Code Climate</a>.</b>},
    :season           => 1,
    :episode          => 3,
    :url              => "http://farmhouse.s3.amazonaws.com/podcast/S01/03%20Puma,%20Puma,%20Puma...%20with%20a%20dash%20of%20Rubinius.mp3",
    :authors          => "Shane Becker and Evan Phoenix",
    :itunes_summary   => "Shane Becker and Evan Phoenix discuss using the Puma web server and Rubinius. Sponsored by: Code Climate.",
    :enclosure_length => "41917511",
    :duration         => "21:50",
    :keywords         => "computer science, farmhouse, hollywood, homesteading, nerdery, web, web server, puma, rubinius, ruby",
    :show_notes       => %Q{
      <a href="http://puma.io" title="A Modern, Concurrent Web Server for Ruby - Puma">Puma - A Modern, Concurrent Web Server for Ruby</a>
      <a href="http://en.wikipedia.org/wiki/Mongrel_(web_server)" title="Mongrel (web server) - Wikipedia, the free encyclopedia">Mongrel</a>
      <a href="http://unicorn.bogomips.org" title="File: README [Unicorn: Rack HTTP server for fast clients and Unix]">Unicorn</a>
      <a href="http://www.w3.org/Protocols/rfc2616/rfc2616.html" title="Hypertext Transfer Protocol -- HTTP/1.1">Hypertext Transfer Protocol -- HTTP/1.1</a>
      <a href="http://en.wikipedia.org/wiki/Ruby_MRI" title="Ruby MRI - Wikipedia, the free encyclopedia">MRI</a>
      <a href="http://en.wikipedia.org/wiki/Green_threads" title="Green threads - Wikipedia, the free encyclopedia">Green Threads</a>
      <a href="http://rubini.us" title="Rubinius : Use Ruby&#8482;">Rubinius</a>
      <a href="http://en.wikipedia.org/wiki/Global_Interpreter_Lock" title="Global Interpreter Lock - Wikipedia, the free encyclopedia">GIL</a>
      <a href="http://rack.github.com" title="Rack: a Ruby Webserver Interface">Rack</a>
      <a href="http://en.wikipedia.org/wiki/Rack_(web_server_interface)" title="Rack (web server interface) - Wikipedia, the free encyclopedia">Rack on Wikipedia</a>
      <a href="http://mongrel2.org" title="The Mongrel2 Web Server Project">Mongrel2</a>
      <a href="https://devcenter.heroku.com/articles/cedar">Heroku Cedar Stack</a>
      <a href="https://devcenter.heroku.com/articles/procfile">Procfile</a>
      <code>gem "puma", :group => "production"</code>
      <code>web: bundle exec puma -p $PORT</code>
      <b>Sponsor:</b> <a href="https://codeclimate.com">Code Climate</a>
      <a href="http://github.com/puma/puma/issues">Puma's GitHub Issues</a>
      <a href="https://twitter.com/evanphx">@evanphx</a>
      <a href="mailto:evan@phx.io">evan@phx.io</a>
      <a href="http://github.com/puma/">Puma organization</a>
      <a href="http://github.com/puma/puma">Puma on GitHub</a>
      <a href="https://github.com/puma/puma.io">Puma.io website repo</a>
      <a href="https://twitter.com/fixie">Jordan Isip (@fixie)</a>
      <a href="http://devswag.com" title="DevSwag">Dev Swag</a>
      <a href="http://devswag.com/products/puma-sticker" title="Puma Stickers (4) | DevSwag">Puma stickers on Dev Swag</a>
      <a href="https://twitter.com/wifelette">Leah Silber (@wifelette)</a>
      <a href="http://www.zenspider.com/ZSS/Products/RubyInline/" title="RubyInline |  zenspider.com by ryan davis">Ryan Davis' RubyInline</a>
      <a href="http://betterruby.wordpress.com/2008/03/18/shotgun-the-rubinius-virtual-machine/" title="Shotgun: The Rubinius Virtual Machine &laquo; Building a Better Ruby">Rubinius Shotgun</a>
      <a href="https://twitter.com/rubinius">@rubinius</a>
      <a href="http://github.com/rubinius">Rubinius on GitHub</a>
      <a href="https://twitter.com/gopumago">@gopumago on Twitter</a>
      <a href="https://twitter.com/brynary">Bryan Helmkamp (@brynary)</a>
    }
  },
  {
    :title            => "jQuery Mobile Talk with John Bender",
    :subtitle         => "",
    :published_at     => Time.parse("2012-11-24T19:10:44 -0800"),
    :summary          => %Q{<a href="http://iamshane.com" title="I'm Shane Becker">Shane Becker</a> and <a href="http://johnbender.us" title="johnbender.us">John Bender</a> discuss mobile web development and <a href="http://jquerymobile.com" title="jQuery Mobile | jQuery Mobile">jQuery Mobile</a>. Sponsored by: <a href="http://hybridgroup.com" title="Los Angeles Ruby on Rails, JavaScript, Cloud Computing, Mobile Development - The Hybrid Group">The Hybrid Group</a>.},
    :season           => 1,
    :episode          => 4,
    :url              => "http://farmhouse.s3.amazonaws.com/podcast/S01/04%20jQuery%20Mobile%20Talk%20with%20John%20Bender.mp3",
    :authors          => "Shane Becker and John Bender",
    :itunes_summary   => "Shane Becker and John Bender discuss mobile web development and jQuery Mobile. Sponsored by: The Hybrid Group.",
    :enclosure_length => "89742910",
    :duration         => "46:44",
    :keywords         => "javascript, jquery, jquerymobile, farmhouse, hollywood, nerdery, web",
    :show_notes       => %Q{
      <a href="https://twitter.com/johnbender">@johnbender</a>
      <a href="http://johnbender.us" title="johnbender.us">johnbender.us</a>
      <a href="http://jquerymobile.com" title="jQuery Mobile | jQuery Mobile">jquerymobile.com</a>
      <a href="http://blogs.adobe.com/adobeandjquery/" title="Adobe &amp; jQuery">Adobe &amp; jQuery</a>
      <a href="http://youtube.com/watch?v=yd8jh9QYfEs" title="Rihanna - Don&#39;t Stop The Music - YouTube">Rihanna - Don't Stop The Music</a>
      <a href="https://github.com/jquery/jquery-mobile">jQuery Mobile on GitHub</a>
      <a href="http://filamentgroup.com" title="Filament Group, Inc. | User Interface Design &amp; Development | Boston, MA">The Filament Group</a>
      <a href="https://github.com/jquery/jquery-mobile/commit/1d0fd4a7d8b852e10dfe91cd2920579ea4c30cc3">First commit "all the mobiley goodness"</a>
      <a href="http://scottjehl.com" title="Scott Jehl, Web Designer/Developer, Boston, MA | Website, Web Application, and User Interface Design and Development">Scott Jehl</a> : <a href="https://github.com/scottjehl">GitHub</a>. <a href="https://twitter.com/scottjehl">Twitter</a>.
      <a href="http://futurefriend.ly" title="Future Friendly">Future Friendly</a>
      Mitchell Hashimoto : <a href="https://github.com/mitchellh">GitHub</a>. <a href="https://twitter.com/mitchellh">Twitter</a>.
      <a href="http://vagrantup.com" title="Vagrant - Virtualized development for the masses.">Vagrant</a>
      <a href="http://tenderlovemaking.com" title="Tender Lovemaking |  tenderlovemaking.com">Aaron Patterson</a> : <a href="https://github.com/tenderlove">GitHub</a>. <a href="https://twitter.com/tenderlove">Twitter</a>.
      <a href="http://phonegap.com" title="PhoneGap | Home">PhoneGap</a> / <a href="http://www.adobe.com/aboutadobe/pressroom/pressreleases/201110/AdobeAcquiresNitobi.html" title="Adobe Announces Agreement to Acquire Nitobi, Creator of PhoneGap">Adobe</a>.
      <b>Sponsor: </b> <a href="http://hybridgroup.com" title="Los Angeles Ruby on Rails, JavaScript, Cloud Computing, Mobile Development - The Hybrid Group">The Hybrid Group</a>
      <b>Sponsor: </b> <a href="https://twitter.com/deadprogram">Ron Evans</a>
      <b>Sponsor: </b> <a href="https://twitter.com/dfischer">Daniel Fischer</a>
      <b>Sponsor: </b> Ruby Hero Tenderlove: <a href="http://www.confreaks.com/videos/526-roa2011-ruby-hero-tenderlove" title="Ruby Hero Tenderlove! - Ron Evans, Jim Weirich, Aaron Patterson, Josh Susser - Ruby On Ales 2011">Ruby On Ales 2011</a>. <a href="http://www.confreaks.com/videos/529-farmhouseconf-ruby-hero-tenderlove" title="Ruby Hero Tenderlove! - Ron Evans - Farmhouse Conf 2011">Farmhouse Conf 1</a>.
      <b>Sponsor: </b> <a href="https://twitter.com/hybrid_group">@Hybrid_Group</a>
      <b>Sponsor: </b> <a href="https://www.clutchapp.com">Clutch</a>
      <b>Sponsor: </b> <a href="https://www.kanbanpad.com">kanbanpad</a>
      <a href="https://twitter.com/mitchellh/status/259162403739156481">Mitch's weird DNS knowledge</a>
      <a href="http://www.android.com/about/jelly-bean/" title="Android - Android 4.1, Jelly Bean">Monkey Banana Split (aka "Jelly Bean")</a>
      <a href="http://www.google.com/intl/en/chrome/browser/mobile/" title="Chrome for Mobile">Chrome for Mobile</a>
      <a href="https://coderwall.com/p/bdxjzg">300ms delay between tap event and click event</a>
      <a href="http://en.wikipedia.org/wiki/Haptic_technology" title="Haptic technology - Wikipedia, the free encyclopedia">Haptic feedback</a>
      <a href="http://html5doctor.com/history-api/" title="Pushing and Popping with the History API | HTML5 Doctor">popState()</a> and <a href="http://diveinto.html5doctor.com/history.html" title="History API - Dive Into HTML5">the history API</a>
      <a href="http://www.w3.org" title="World Wide Web Consortium (W3C)">W3C</a>
      <a href="https://github.com/rails/turbolinks">Turbo Links for Rails</a>
      <a href="https://github.com/defunkt/jquery-pjax">pjax</a>
      <a href="http://tantek.com/2011/238/b1/many-ways-slice-url-name-pieces" title="How many ways can you slice a URL and name the pieces? - Tantek">Pieces of a URL</a>
      <a href="https://developers.google.com/webmasters/ajax-crawling/docs/getting-started">#! - Hashbang URLs</a>
      <a href="https://github.com/cowboy/jquery-hashchange">Ben Allman's jQuery plugin for URL hash changing</a>
      <a href="http://jquerymobile.com/designs/" title="Designs | jQuery Mobile">jQuery Mobile UIkit</a>
      <a href="http://www.sencha.com" title="HTML5 App Development Tools. Build Apps for Any Device with Sencha. | Home | Sencha">Sencha</a>
      <a href="http://jquerymobile.com/test/docs/api/events.html" title="jQuery Mobile Docs - Events">jQuery Mobile vclick</a>
      <a href="https://twitter.com/jquerymobile">@jquerymobile</a>
    }
  },
  {
    :title            => "Roundtable discussion: Evan Phoenix, John Bender, Steve Klabnik and Shane Becker. Sponsored by: Hashicorp.",
    :subtitle         => "On DOS attacks on data structures, Veggie Grill and Ruby 2.0 / Refinements. ",
    :published_at     => Time.parse("2012-12-08T10:50 -0800"),
    :summary          => %Q{ <a href="https://twitter.com/evanphx">Evan Phoenix</a>, <a href="http://johnbender.us" title="johnbender.us">John Bender</a>, <a href="http://SteveKlabnik.com" title="Steve Klabnik">Steve Klabnik</a> and and <a href="http://iamshane.com" title="The Internet Home Site of Shane Becker">Shane Becker</a> "discuss": DOS attacks on fundamental data structures(... bullshit or not?), Veggie Grill (pros and cons), Paleo / paleo, Ruby 2.0 / Refinements. },
    :season           => 1,
    :episode          => 5,
    :url              => "http://farmhouse.s3.amazonaws.com/podcast/S01/05%20Roundtable%20discussion_%20Evan%20Phoenix,%20John%20Bender,%20Steve%20Klabnik%20and%20Shane%20Becker.%20Sponsored%20by_%20Hashicorp..mp3",
    :authors          => "Shane Becker, Steve Klabnik, Evan Phoenix and John Bender",
    :itunes_summary   => "Evan Phoenix, John Bender, Steve Klabnik and and Shane Becker 'discuss': DOS attacks on fundamental data structures(... bullshit or not?), Veggie Grill (pros and cons), Paleo / paleo, Ruby 2.0 / Refinements.",
    :enclosure_length => "124706313",
    :duration         => "1:04:52",
    :keywords         => "ruby, computer science, farmhouse, hollywood, nerdery, veggie grill, refinements, paleo, dos, hash",
    :show_notes       => %Q{
      <b>Topic idea:</b> <q><a href="https://twitter.com/jlsuttles/status/276764180848189440">Veggie Grill, pros and cons</a></q>. By <a href="https://twitter.com/jlsuttles">Jessica Suttles</a>.
      <b>Topic idea:</b> <q><a href="https://twitter.com/eywu/status/276566665657991169">Thoughts on building a community or being active in 1 eg ruby brigade,nerd club. I want to build 1 around my passion. Tips?</a></q>. By <a href="https://twitter.com/eywu">Eric Wu</a>.
      <b>Topic idea:</b> <q><a href="https://twitter.com/johnbender/status/276526662886248449">Ruby 2.0/Refinements, presenting tips, favorite books.</q>. By <a href="https://twitter.com/johnbender/">John Bender</a>.
      <b>Topic idea:</b> <a href="https://twitter.com/joeatwork/status/276524304961781760">The socially responsibilities of technologists? Creating liberating tech?</a>. By <a href="https://twitter.com/joeatwork/">Joe Bowers</a>.
      <b>Topic idea:</b> DOS attacks on fundamental algorithms. Bullshit or not? By Evan Phoenix.
      <a href="http://emboss.github.com/blog/2012/12/14/breaking-murmur-hash-flooding-dos-reloaded/" title="Breaking Murmur: Hash-flooding DoS reloaded">Breaking Murmur: Hash-flooding DoS Reloaded</a>
      <a href="http://www.cs.cornell.edu/courses/cs312/2008sp/lectures/lec20.html" title="Lecture 20: Hash tables and amortized analysis">Big O notations</a>
      <a href="http://www.ruby-lang.org/en/news/2012/11/09/ruby19-hashdos-cve-2012-5371/" title="Hash-flooding DoS vulnerability for ruby 1.9 (CVE-2012-5371)">Hash-flooding DoS vulnerability for ruby 1.9 (CVE-2012-5371)</a>
      <a href="http://www.ruby-lang.org/en/news/2011/12/28/denial-of-service-attack-was-found-for-rubys-hash-algorithm-cve-2011-4815/" title="Denial of service attack was found for Ruby's Hash algorithm (CVE-2011-4815)">Denial of service attack was found for Ruby's Hash algorithm (CVE-2011-4815)</a>
      <a href="http://www.veggiegrill.com" title="VeggieGrill - Home Page">Veggie Grill (not a sponsor)</a>
      <a href="http://goo.gl/maps/Fhs1c" title="1558 Gordon St, Los Angeles, CA 90028 to Veggie Grill, 6374 Sunset Boulevard, Hollywood, CA 90028 - Google Maps">Distance from The Farmhouse to Veggie Grill</a>
      <a href="http://www.imdb.com/title/tt1742336/" title="Your Sister&#x27;s Sister (2011) - IMDb">Your Sister's Sister</a>
      <a href="http://jennifersway.org/gluten-free-vegan-friendly-soy-free-and-yum-e-buckwheat-teff-pancakes/" title="Gluten-Free, Vegan Friendly, Soy Free, and Yum-E Buckwheat Teff Pancakes | Jennifer&#039;s Way">Vegan, Soy Free, Gluten-Free</a>
      <a href="http://en.wikipedia.org/wiki/Atkins_diet" title="Atkins diet - Wikipedia, the free encyclopedia">Atkins Diet</a>
      <a href="http://en.wikipedia.org/wiki/Paleolithic_diet" title="Paleolithic diet - Wikipedia, the free encyclopedia">Paleo Diet</a>
      <a href="http://www.marksdailyapple.com/primal-blueprint-101/#axzz2HS2q3E00" title="Primal Blueprint 101 | Mark&#039;s Daily Apple">Primal Diet</a>
      <a href="http://en.wikipedia.org/wiki/Ketogenic_diet" title="Ketogenic diet - Wikipedia, the free encyclopedia">Ketogenic diet</a>
      <a href="http://en.wikipedia.org/wiki/Nightshade" title="Solanaceae - Wikipedia, the free encyclopedia">Nightshades (foods)</a>
      <a href="http://en.wikipedia.org/wiki/Atropa_belladonna" title="Atropa belladonna - Wikipedia, the free encyclopedia">Deadly Nightshade</a>
      <a href="http://www.crossfitpulse.com/chocolate-paleo-cupcakes-with-icing/" title="Chocolate Paleo Cupcakes with Icing &#8211; CrossFit Pulse: Real People, Real Workouts, Real Results">"Paleo cupcakes"</a>
      <a href="http://www.youtube.com/watch?v=YUAiTxqBRqE" title="How to Use a Throwing or Rabbit Stick to Hunt Samll Game - YouTube">How to Use a Throwing or Rabbit Stick to Hunt Small Game</a>
      <a href="http://en.wikipedia.org/wiki/American_bison" title="American bison - Wikipedia, the free encyclopedia">American bison</a>
      <a href="http://en.wikipedia.org/wiki/Paleolithic" title="Paleolithic - Wikipedia, the free encyclopedia">The Paleolithic Age</a>
      <a href="http://en.wikipedia.org/wiki/Hunter-gatherer" title="Hunter-gatherer - Wikipedia, the free encyclopedia">Foraging</a>
      <a href="http://en.wikipedia.org/wiki/History_of_agriculture" title="History of agriculture - Wikipedia, the free encyclopedia">History of agriculture</a>
      <a href="https://www.salesforce.com">Salesforce (not a sponsor)</a>
      <a href="http://techcrunch.com/2010/12/08/breaking-salesforce-buys-heroku-for-212-million-in-cash/" title="Salesforce.com Buys Heroku For $212 Million In Cash  |  TechCrunch">Salesforce, a subsidiary of Heroku</a>
      <a href="http://www.crossfit.com" title="Welcome to CrossFit: Forging Elite Fitness">Crossfit</a>
      <a href="https://twitter.com/kennethreitz">Kenneth Reitz</a>
      <a href="http://www.hashicorp.com" title="HashiCorp"><b>Sponsor:</b> Hashicorp</a>
      <a href="https://twitter.com/mitchellh"><b>Sponsor:</b> Mitchell Hashimoto</a>
      <a href="http://www.vagrantup.com" title="Vagrant"><b>Sponsor:</b> Vagrant</a>
      <a href="http://www.hashicorp.com/blog/announcing-hashicorp.html" title="HashiCorp"><b>Sponsor:</b> Announcing HashiCorp</a>
      At 30:30 Steve mistakenly claimed that Shugo only committed the Refinements patch, and that Shugo did not write it. <a href="http://bugs.ruby-lang.org/issues/4085#note-95" title="Feature #4085: Refinements and nested methods - ruby-trunk - Ruby Issue Tracking System">Steve was wrong.</a>
      <a href="http://bugs.ruby-lang.org/issues/show/4085" title="Feature #4085: Refinements and nested methods - ruby-trunk - Ruby Issue Tracking System">Ruby Refinements and nested methods (in Redmine)</a>
      <a href="http://www.rubyinside.com/ruby-refinements-an-overview-of-a-new-proposed-ruby-feature-3978.html" title="Ruby Refinements: An Overview of a New Proposed Ruby Feature">Ruby Refinements: An Overview of a New Proposed Ruby Feature</a>
      <a href="http://en.wikipedia.org/wiki/Monkey_patch" title="Monkey patch - Wikipedia, the free encyclopedia">Monkey patching</a>
      <a href="http://rubylearning.com/satishtalim/ruby_open_classes.html" title="Ruby Open Classes: Ruby Study Notes - Best Ruby Guide, Ruby Tutorial">Ruby Open Classes</a>
      <a href="http://branch.com/b/should-jruby-aim-to-support-ruby-s-c-api" title="Should JRuby aim to support Ruby's C API? - Branch">Should JRuby aim to support Ruby's C API? by Erik Michaels-Ober</a>
      <a href="https://github.com/jruby/jruby/wiki/C-Extension-Alternatives">JRuby C Extension Alternatives</a>
      <a href="http://guides.rubyonrails.org/active_support_core_extensions.html" title="Ruby on Rails Guides: Active Support Core Extensions">ActiveSupport</a>
      <a href="http://blog.headius.com/2012/11/refining-ruby.html" title="Headius: Refining Ruby">Charles Nutter on Refinements</a>
      <a href="http://yehudakatz.com/2010/11/30/ruby-2-0-refinements-in-practice/" title="Ruby 2.0 Refinements in Practice &laquo;  Katz Got Your Tongue?">Yehuda Katz on Refinements</a>
      <a href="http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-core/40301" title="[ruby-core:40301] A rough release schedule for 2.0.0">Ruby 2.0 freeze schedule</a>
      <a href="https://github.com/drapergem/draper">Draper</a>
      <a href="https://github.com/johnbender/rquery">John Bender's excursion into the Devil's Playground of metaprogramming : RQuery</a>
      <a href="http://en.wikipedia.org/wiki/Helicopter_parent" title="Helicopter parent - Wikipedia, the free encyclopedia">Helicopter parenting</a>
      <a href="https://github.com/rubinius/rubinius/issues/1006">Flip Flop in Rubinius</a>
    }
  },
  {
    :title            => "Interview: Mitchell Hashimoto",
    :subtitle         => "Creator of Vagrant. Founder of HashiCorp.",
    :published_at     => Time.parse("Fri Feb 01 12:44:50 -0800 2013"),
    :summary          => %Q{ Shane Becker talks with Mitchell Hashimoto about Vagrant, HashiCorp, open source and community. },
    :season           => 1,
    :episode          => 6,
    :url              => "http://farmhouse.s3.amazonaws.com/podcast/S01/06%20Interview_%20Mitchell%20Hashimoto.mp3",
    :authors          => "Shane Becker and Mitchell Hashimoto",
    :itunes_summary   => "Shane Becker talks with Mitchell Hashimoto about Vagrant, HashiCorp, open source and community.",
    :enclosure_length => "68270555",
    :duration         => "35:33",
    :keywords         => "ruby, computer science, farmhouse, hollywood, nerdery, vagrant, open source, hashicorp, mitchell hashimoto",
    :show_notes       => %Q{
      Coming soon...
    }
  }
]

episodes.each do |episode|
  Episode.create!(episode)
end
