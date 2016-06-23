User.create!(
  first_name:            'Mike',
  last_name:             'Fletcher',
  email:                 'mfletcher@harvard.edu',
  password:              'nirVana1994',
  password_confirmation: 'nirVana1994'
)

User.create!(
  first_name:            'Taylor',
  last_name:             'Stewart',
  email:                 'lighttabor@gmail.com',
  password:              'phoebe123',
  password_confirmation: 'phoebe123'
)

User.create!(
  first_name:            'Janet',
  last_name:             'Campbell',
  email:                 'jcampbell84@gmail.com',
  password:              'bestparts#4!',
  password_confirmation: 'bestparts#4!'
)

User.create!(
  first_name:            'Oliver',
  last_name:             'Stewart',
  email:                 'oliverstewart@zoho.com',
  password:              'RalphRules098',
  password_confirmation: 'RalphRules098'
)

User.create!(
  first_name:            'Ken',
  last_name:             'Cassidy',
  email:                 'onefleweast@gmail.com',
  password:              'fuuurtheer65',
  password_confirmation: 'fuuurtheer65'
)

User.create!(
  first_name:            'Jed',
  last_name:             'Paisley',
  email:                 'jpaisley@bishops.edu',
  password:              '19tryintorun84',
  password_confirmation: '19tryintorun84'
)

User.create!(
  first_name:            'Amanda',
  last_name:             'Mullen',
  email:                 'amullen@ymail.com',
  password:              'LoLaCoLa',
  password_confirmation: 'LoLaCoLa'
)

User.create!(
  first_name:            'Alexis',
  last_name:             'Ryder',
  email:                 'horsebackryder@4H.com',
  password:              'ComeRidewithMe!',
  password_confirmation: 'ComeRidewithMe!'
)

User.create!(
  first_name:            'Sunni',
  last_name:             'Faye',
  email:                 'sunniwithachance@verizon.net',
  password:              'ofMeatballs',
  password_confirmation: 'ofMeatballs'
)

User.create!(
  first_name:            'Jackie',
  last_name:             'Rockwell',
  email:                 'jrockwell89@gmail.com',
  password:              'hEndrix69',
  password_confirmation: 'hEndrix69'
)

User.create!(
  first_name:            'Keith',
  last_name:             'Daniels',
  email:                 'kdaniels@cnn.com',
  password:              '0newsRoomlife0',
  password_confirmation: '0newsRoomlife0'
)

User.create!(
  first_name:            'Floyd',
  last_name:             'Pinkman',
  email:                 'floydpinkman52@gmail.com',
  password:              'aNoTherBriCK',
  password_confirmation: 'aNoTherBriCK'
)

User.create!(
  first_name:            'Sal',
  last_name:             'Gustafson',
  email:                 'gus@hstv.com',
  password:              'NineDeuce!',
  password_confirmation: 'NineDeuce!'
)

User.create!(
  first_name:            'Jesse',
  last_name:             'Jagger',
  email:                 'jj@cumbancha.com',
  password:              'inthebarn!',
  password_confirmation: 'inthebarn!'
)

User.create!(
  first_name:            'Whitney',
  last_name:             'Rambler',
  email:                 'wrambler93@gmail.com',
  password:              'keepWAlken',
  password_confirmation: 'keepWAlken'
)

User.create!(
  first_name:            'Juila',
  last_name:             'Morgan',
  email:                 'joolia@zoho.com',
  password:              '72milkMan',
  password_confirmation: '72milkMan'
)

User.create!(
  first_name:            'Hunter',
  last_name:             'Gleeson',
  email:                 'deerhunter@comcast.net',
  password:              '#99Problems',
  password_confirmation: '#99Problems'
)

User.create!(
  first_name:            'Art',
  last_name:             'Simon',
  email:                 'asimon@juliard.edu',
  password:              'GretchenFetchen',
  password_confirmation: 'GretchenFetchen'
)

User.create!(
  first_name:            'Jennifer',
  last_name:             'Lovitz',
  email:                 'meanqueen@yahoo.com',
  password:              'QueenOfMean',
  password_confirmation: 'QueenOfMean'
)

User.create!(
  first_name:            'Britney',
  last_name:             'Harrison',
  email:                 'bharrison@verizon.net',
  password:              'Gold&Silver',
  password_confirmation: 'Gold&Silver'
)

User.create!(
  first_name:            'John',
  last_name:             'Marion',
  email:                 'jmarion@hilton.com',
  password:              'getARoom!',
  password_confirmation: 'getARoom!'
)

User.create!(
  first_name:            'Howie',
  last_name:             'Dreyfus',
  email:                 'dreyman@suny.edu',
  password:              'Jaws2&3D',
  password_confirmation: 'Jaws2&3D'
)

Api.create!(
 name: 'Associated Press API',
 url: 'https://developer.ap.org/ap-content-api',
 description: "The world's oldest and largest newsgathering organization, has an API that enables developers to build applications incorporating data from the Associated Press's expansive database of content. The platform includes tools that allow developers to target the exact content users want. The API allows users to search and download AP Images.",
 category: 'News',
 free: false,
 user_id: rand(1..19)
)

Api.create!(
 name: 'Digest Report API:',
 url: 'http://www.litterareport.com/developers/',
 description: 'Digest Report is an independent journalism website to help aspiring, as well as experienced writers. The site enabled writers to expose their work to a wide audience and interact with readers.',
 free: false,
 user_id: rand(1..19)
)

Api.create!(
 name: 'Civicboom API',
 url: 'https://www.civicboom.com/about/developers',
 description: "Allows developers to access the data and information from Civicboom. Some example API methods include accessing account and member information, invite and register new members to groups, and accessing content.",
 free: false,
 category: 'News',
 user_id: rand(1..19)

)

Api.create!(
 name: 'Digg API',
 url: 'digg.com/faq',
 description: 'Returns Digg data in a form that can be integrated into an application or a web site. The API is available to everyone free of charge, but its use is subject to acceptance of the API License Agreement.',
 free: false,
 category: 'News',
 user_id: rand(1..19)

)

Api.create!(
 name: 'Guardian API',
 url: 'http://www.guardian.co.uk/',
 description: 'Includes two products, the Content API and the Data Store. is a mechanism for getting Guardian content. You can query our content database for articles and get them back in formats that are geared toward integration with other internet applications.',
 free: false,
 category: 'News',
 user_id: rand(1..19)

)

Api.create!(
 name: 'New York Times Article Search',
 url: 'http://www.nytimes.com',
 description: 'Along with standard keyword searching, the API also offers faceted searching. The available facets include Times-specific fields such as sections, taxonomic classifiers and controlled vocabulary terms.',
 free: true, 
 category: 'News',
 user_id: rand(1..19)
)

Api.create!(
 name: 'Challonge API',
 url: 'https://challonge.com/api/',
 description: "Expands tournament creation and control to the programmatic level. You can create tournaments on the fly and report scores directly from your application.",
 free: true, 
 category: 'Sports',
 user_id: rand(1..19)
)

Api.create!(
 name: 'Ergast',
 url: 'http://ergast.com/api/',
 description: "Provides data for the Formula 1 and Formula E series, from the start of the World Championships in 1950 and 2014 respectively. New: Now provides Formula One lap times and pit stop data from the 2011 season onwards.",
 free: true, 
 category: 'Sports',
 user_id: rand(1..19)
)

Api.create!(
 name: 'ESPN',
 url: 'http://api.espn.com/v1',
 description: "Offers sports scores, standings, and other statistics for a variety of sports. The ESPN.com API allows developers to access and integrate the data of ESPN.com with other applications and to create new applications.",
 free: true, 
 category: 'Sports',
 user_id: rand(1..19)
)

Api.create!(
 name: 'SeatGeek',
 url: 'http://api.seatgeek.com',
 description: "Displays this information in addition to interactive seating charts to allow for easy assessment of ticket quality.",
 free: true, 
 category: 'Sports',
 user_id: rand(1..19)
)

Api.create!(
 name: 'Watch',
 url: 'http://dev.wewatchthematch.com/index.php?r=',
 description: "A service that lets fans search for a place to watch their favorite sports team and then book a table at that locale. Restaurants and bars register with the service to participate.",
 free: true, 
 category: 'Sports',
 user_id: rand(1..19)
)

Api.create!(
 name: 'Google Analytics',
 url: 'https://developers.google.com/analytics/',
 description: "Analytical data from Google searches acording to time and location.",
 free: true, 
 category: 'Data',
 user_id: rand(1..19)
)

Api.create!(
 name: 'YouTube',
 url: 'https://developers.google.com/youtube/?csw=1#data_api',
 description: "Embed YouTube videos and analytical data into any website.",
 free: true, 
 category: 'Data',
 user_id: rand(1..19)
)

Api.create!(
 name: 'Yahoo!',
 url: 'https://developer.yahoo.com/everything.html',
 description: "Get historical search data from one of the origin search engines. Can be used with other web tools for power predictative ability!",
 free: true, 
 category: 'Data',
 user_id: rand(1..19)
)

Api.create!(
 name: 'Twitter',
 url: 'https://dev.twitter.com/',
 description: "Tap into the Twitter Zeitgeist via their API! Some feed-based features are free, but you need to pay in order to get full functionality.",
 free: false, 
 category: 'Data',
 user_id: rand(1..19)
)

Api.create!(
 name: 'Facebook',
 url: 'https://developers.facebook.com/',
 description: "All the social networking data you need in one convenient API.",
 free: false, 
 category: 'Data',
 user_id: rand(1..19)
)

Api.create!(
 name: 'Foursquare',
 url: 'https://developer.foursquare.com/',
 description: "Pull data about today's retail checkins or free. Historicaly data is only available for big shots tho :(",
 free: true, 
 category: 'Data',
 user_id: rand(1..19)
)

Api.create!(
 name: 'Skiddle',
 url: 'http://www.skiddle.com/api/',
 description: "Users can search events and venues. The API uses RESTful protocol and responses are formatted in JSON.",
 free: true, 
 category: 'Events',
 user_id: rand(1..19)
)

Api.create!(
 name: 'MyUpcoming',
 url: 'http://www.myupcoming.com/api',
 description: "Tap into a large database of events from thousands of sources that is frequently updated. Each event comes with XY coordinates, so you can get the latest, hyper-localized events, which you can then integrate into your apps.",
 free: true, 
 category: 'Events',
 user_id: rand(1..19)
)

Api.create!(
 name: 'JamBase',
 url: 'http://api.jambase.com/',
 description: "JamBase is the premiere location for live music and concert information on the web. JamBase.com contains a comprehensive tour date search engine a tens of thousands of performances by over 50,000 venues, 50,000 artists and 70,000 performances.",
 free: true, 
 category: 'Events',
 user_id: rand(1..19)
)

Api.create!(
 name: 'Meetup',
 url: 'http://api.meetup.com',
 description: "Allows developers to use the Topics, Groups and Events hosted and created on Meetup.com in their own applications and mashups. Any Meetup.com member can request an API key.",
 free: true, 
 category: 'Events',
 user_id: rand(1..19)
)

Api.create!(
 name: 'Grocery Checklist',
 url: 'http://grocery-checklist-api.azurewebsites.net/api',
 description: "Provides useful tools in its service such as creating Checklist Items, Product Search, organizing Categories, and more.",
 free: true, 
 category: 'Food',
 user_id: rand(1..19)
)

Api.create!(
 name: 'SinglePlatform',
 url: 'http://www.singleplatform.com/',
 description: "A free API that enables publishers to implement hundreds of thousands of restaurant menus spanning over 13,000 cities. ",
 free: true, 
 category: 'Food',
 user_id: rand(1..19)
)

Api.create!(
 name: 'Food2u',
 url: 'http://www.food2u.es/',
 description: "Allows users in Spain to order food from restaurants that are near their location.",
 free: true, 
 category: 'Food',
 user_id: rand(1..19)
)

Api.create!(
 name: 'Beer Mapping',
 url: 'http://beermapping.com/webservice',
 description: "Lets you get latitude/longitude, phone numbers, ratings, addresses, and more for breweries and other beer-related venues. Access a wide variety of data in the database.",
 free: true, 
 category: 'Food',
 user_id: rand(1..19)
)

Api.create!(
 name: 'FoodFacts',
 url: 'http://api.foodfacts.com',
 description: "Allows developers to harness powerful food product data containing full information about the product such as nutrition information, ingredients, allergens associated, warnings, report card, and an innovative scoring mechanism created by FoodFacts." ,
 free: true, 
 category: 'Food',
 user_id: rand(1..19)
)

Api.create!(
 name: 'Grooveshark',
 url: 'http://developers.grooveshark.com/docs/public_api/v3/',
 description: "Makes available methods for accessing and interacting with Grooveshark data. This API is experimental, and may change. At present all methods require a 'method signature' which means you need a web services key and secret to access them.",
 free: true, 
 category: 'Music',
 user_id: rand(1..19)
)

Api.create!(
 name: 'Beats Music',
 url: 'https://partner.api.beatsmusic.com/v1/',
 description: "Beats Music is a music curation service that allows users to input location, mood, company, and the service streams music that it thinks will fit the situation.",
 free: true, 
 category: 'Music',
 user_id: rand(1..19)
)

Api.create!(
 name: 'Spotify',
 url: 'https://www.spotify.com/us/',
 description: "Allows developers to use their application to get data from the Spotify music catalog.",
 free: true, 
 category: 'Music',
 user_id: rand(1..19)
)

Api.create!(
 name: 'Last.fm',
 url: 'http://www.last.fm/api',
 description: "Gives users the ability to build programs using Last.fm data, whether on the web, the desktop or mobile devices.",
 free: true, 
 category: 'Music',
 user_id: rand(1..19)
)

Api.create!(
 name: 'Location-API',
 url: 'http://www.location-api.com',
 description: "Helps developers and mobile service providers to locate mobile phones and other mobile devices connected to the GSM and WCDMA networks. Geographic coordinates for latitude and longitude are provided from a database that includes cell IDs from 200+ countries and 4M+ cells.",
 free: true, 
 category: 'Geolocation',
 user_id: rand(1..19)
)

Api.create!(
 name: 'Dynamic Geometry',
 url: 'http://www.dyngeometry.com/web/Developer.aspx',
 description: "Provides a number of utilities for manipulating maps and adding content to the map for integration with another website.",
 free: true, 
 category: 'Geolocation',
 user_id: rand(1..19)
)

Api.create!(
 name: 'Quova',
 url: 'http://api.quova.com/v1/',
 description: "Claims to be the most accurate, with the most data available. The Quova API lets you plug into the vast world of IP intelligence, allowing you to instantly build your own Quova-powered applications for the web, desktop and mobile devices.",
 free: true, 
 category: 'Geolocation',
 user_id: rand(1..19)
)

Api.create!(
 name: 'Wigle',
 url: 'https://wigle.net/wiki/index.cgi?API',
 description: "An online database of wireless access points. Wigle maps them for visualization of wireless coverage.",
 free: true, 
 category: 'Geolocation',
 user_id: rand(1..19)
)

Api.create!(
 name: 'PerfectMoney',
 url: 'http://www.perfectmoney.com/sample-api.html?drgn=2&welcome=1',
 description: "A secure money transfer service from p2p and from b2b. The PerfectMoney API allows users to interact with the PerfectMoney service programmatically using the REST protocol. ",
 free: true, 
 category: 'Financial',
 user_id: rand(1..19)
)

Api.create!(
 name: 'Finansportalen',
 url: 'https://www.finansportalen.no/feed/v2',
 description: "A tool that helps consumers to compare financial industry products The Finansportalen API exposes data feeds on financial products for the Norwegian market.",
 free: true, 
 category: 'Financial',
 user_id: rand(1..19)
)

Api.create!(
 name: 'CrunchBase',
 url: 'http://api.crunchbase.com/v/1',
 description: "A product of TechCrunch and is a directory of technology companies, people, and investment profiles especially for companies involved in Web 2.0.",
 free: true, 
 category: 'Financial',
 user_id: rand(1..19)
)

Api.create!(
 name: 'Stripe',
 url: 'https://stripe.com/docs/api',
 description: "Stripe is a service that allows users to accept payments online, specifically developers. With the Stripe application, users can keep track of payments, search past payments, create recurring charges, and keep track of customers.",
 free: true, 
 category: 'Financial',
 user_id: rand(1..19)
)

Api.create!(
 name: 'PayPal',
 url: 'https://developer.paypal.com/',
 description: "The PayPal API makes powerful functionality available to developers by exposing various features of the PayPal platform. ",
 free: true, 
 category: 'Financial',
 user_id: rand(1..19)
)
