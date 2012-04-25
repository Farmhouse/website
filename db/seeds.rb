# the farmhouse location
location = Location.create!(
  :name             => "The Farmhouse",
  :street_address   => "1558 Gordon St",
  :extended_address => "",
  :region_id        => Region.where(:name => "California").first,
  :locality         => "Hollywood",
  :postal_code      => "90028",
  :country_id       => Country.where(:name => "United States").first
)

# farmhouse conf 1, 2011
farmhouse_conf_1 = Conf.create!(
  :name             => "Farmhouse Conf 1",
  :subtitle         => "Backyard Storytelling Under an Avocado Tree",
  :year             => 2011,
  :starts_at        => DateTime.parse("2011-05-07 08:30"),
  :ends_at          => DateTime.parse("2011-05-07 23:00"),
  :location_id      => location.id,
  :twitter          => "farmhouse",
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
    :description  => "",
    :accepted     => true,
    :keynote      => false
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
  :subtitle         => "Backyard Storytelling Under an Avocado Tree. Again.",
  :year             => 2012,
  :starts_at        => DateTime.parse("2012-05-05 08:30"),
  :ends_at          => DateTime.parse("2012-05-05 23:00"),
  :location_id      => location.id,
  :twitter          => "farmhouse",
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
      :title       => "Mapping the LA Tech Scene",
      :description => "Recently Tara wrote a popular post on Forbes about how LA is going to take over the Silicon Valley as the hottest place to run a tech startup. This post received both positive cheers from the LA startup community and guffaws from Silicon Valley. In her talk Tara will talk about the history of the LA tech scene and map out where the startups and money guys (VCs, incubators) are within LA County."
    }
  },
  {
    :name => "Greg Bennick",
    :bio  => %s{
      <p>Greg Bennick is the singer of the hardcore bands <a href="http://en.wikipedia.org/wiki/Trial_(band)" title="Trial (band) - Wikipedia">Trial</a> and <a href="http://myspace.com/betweenearthandsky" title="Between Earth and Sky | Free Music, Tour Dates, Photos, Videos">Between Earth &amp; Sky</a>. He is the founder and executive director of <a href="http://onehundredforhaiti.org" title="ONE HUNDRED FOR HAITI">One Hundred For Haiti</a>, a development and relief organization focusing on bringing opportunities to people in post-earthquake Haiti. He co-founded <a href="http://www.thelegacyproject.com" title="Welcome to the Legacy Project Home Page">The Legacy Project</a> a multi-year initiative to explore how people transition from massive trauma on a social scale to a point of finding reconciliation and justice. He co-produced a number of documentaries which have been seen globally including the multi-award winning &ldquo;<a href="http://flightfromdeath.com/" title="Flight from Death: The Quest for Immortality">Flight From Death: The Quest For Immortality</a>&rdquo;. He speaks to audiences around the world, full time, and is based in Seattle WA.</p>
    },
    :talk => {
      :title       => "The Map from Trauma to Survival",
      :description => "Greg will be speaking about the map from trauma to survival that One Hundred For Haiti is exploring as it starts a new program called &ldquo;Moto Logistics&rdquo; as a development initiative in Haiti. The program might serve as a model to anyone doing development, social, or relief work anywhere in the world as a means of creating jobs and new opportunities from the standpoint of SELF empowerment rather than imposed empowerment."
    }
  },
  {
    :name => "Brian",
    :bio  => %s{
      <p>A longtime contributor to the notorious underground publisher <a href="http://www.crimethinc.com/">CrimethInc.</a>, Brian has organized on a national level within the anarchist, anti-globalization, anti-war, and Occupy movements. In the course of the resulting adventures, he has breathed tear gas for days on end, faced felony rioting charges, and lost friends to the bullets of Mexican paramilitaries. Recently he has traveled the Americas and Europe speaking on grass-roots social movements and anti-capitalist strategies, appearing everywhere from the School of Fine Arts in Athens, Greece to the Universidade Federal de Minas Gerais in Belo Horizonte, but chiefly outside the academy at occupations, social centers, and union halls.</p>
    },
    :talk => {
      :title       => "The Map versus the Territory",
      :description => "What does Twitter have to do with anarchist revolution? More than you might think, even if you think immediately of Egypt and Tunisia. Brian will discuss how the radical demands of the previous generation have been integrated into today's economy, how activism and technology influence one another, and how competing cartographies of power are racing to define the future."
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
      :title       => "Navigating The Gender Landscape",
      :description => "Do we have a gender orientation or are we gender orienteering? In this talk, Maggie Mayhem will talk about how the hardware and software behind our gender assignments, identity, and presentation and demonstrate how male and female are just two potential points on the compass."
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
      :title       => "How Einstein Led Me to Bliss, a Carnie Kingdom, and Pioneering New Methods in Video Mapping",
      :description => "In her talk, Nova will discuss how Einstein inspired her to follow her ultimate happiness and how that chain of events opened up door after door, leading her to her next destinations in life. She will discuss her adventures as a successful circus carnie and how that brought her to a place of pioneering new methods in performance art using interactive video mapping.  Nova will discuss where she sees the future of entertainment and how it will be changed forever using advanced technology. We are inventing the future now."
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
      :title       => "There&rsquo;s No Map for Inventiveness",
      :description => "Getting from an empty piece of paper to an interactive marvel is never as simple as going from point A to point B. The places you wind up on the journey are all part of the fun."
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
      :title       => "Culture Reboot: Mapping Open Spaces and Collaborative Practices in the Emergent Network Economy",
      :description => %s{ We are entering an era that calls for an end to scarcity and individualism toward collaboration, communalism and a commons-based economy. Working together with hackers, makers, neotribalists, activists, technologists, and other edgy thinkers, Jenny seeks to create a new kind of ethnography founded in co-creation, mobility and multimodal documentation. Her current efforts are directed towards building the digital infrastructure for the project, as well as preparations for a 6-9 month multidisciplinary field study to initiate direct collaboration with primary partners and establish a network including all involved parties. (<a href="http://thepyre.org" title="The Pyre | free the means">thepyre.org</a>) }
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
      :title       => "Mapping a Way to the Stars by Disrupting the Status Quo",
      :description => %s{ As the private sector gains momentum and mastery of the technology capable of continuing NASA&rsquo;s legacy of human space flight, we find that the general public has lost the awe and inspiration that space once held. By disrupting the standard ideology on what space means and who is engaging in this unfolding story, we can reinvigorate the human spirit of innovation and exploration&mdash; and in the near future give all who desire, a chance to explore the stars for themselves. }
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
    :accepted     => true,
    :keynote      => false
  )

  talk.people << speaker
end


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

