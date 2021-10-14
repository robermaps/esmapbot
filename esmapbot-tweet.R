# Twitter token
esmapbot_token <- rtweet::create_token(
  app = "esmapbot",
  consumer_key =    Sys.getenv("TWITTER_CONSUMER_API_KEY"),
  consumer_secret = Sys.getenv("TWITTER_CONSUMER_API_SECRET"),
  access_token =    Sys.getenv("TWITTER_ACCESS_TOKEN"),
  access_secret =   Sys.getenv("TWITTER_ACCESS_TOKEN_SECRET")
)

# Load boundaries

spain <- sf::st_read("https://raw.githubusercontent.com/PrograMapa/esmapbot/master/spain.geojson")

# Random coordinates 

point <- sf::st_sample(spain, 1)

coord <- sf::st_coordinates(point)

lon <- round(coord[1],4)
lat <- round(coord[2],4)

# Random zoom level
zoom <- sample(10:16, 1)


# Mapbox API petition
img_url <- paste0(
  "https://api.mapbox.com/styles/v1/mapbox/satellite-v9/static/",
  paste0(lon, ",", lat, ",", zoom),
  ",0/600x400@2x?access_token=",
  Sys.getenv("MAPBOX_PUBLIC_ACCESS_TOKEN")
)

# Download the image as temp file
temp_file <- tempfile()
download.file(img_url, temp_file)

# Twitter message
latlon_details <- paste0(
  "📍 ",lat, ", ", lon, "\n",
  "🗺️ ","https://www.openstreetmap.org/#map=17/", lat, "/", lon, "/"
)

# Send tweet
rtweet::post_tweet(
  status = latlon_details,
  media = temp_file,
  token = esmapbot_token
)
