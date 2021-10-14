# Twitter token
esmapbot_token <- rtweet::create_token(
  app = "esmapbot",
  consumer_key =    Sys.getenv("TWITTER_CONSUMER_API_KEY"),
  consumer_secret = Sys.getenv("TWITTER_CONSUMER_API_SECRET"),
  access_token =    Sys.getenv("TWITTER_ACCESS_TOKEN"),
  access_secret =   Sys.getenv("TWITTER_ACCESS_TOKEN_SECRET")
)

# Load boundaries

#spain <- geojsonR::FROM_GeoJson(url_file_string = "https://raw.githubusercontent.com/PrograMapa/esmapbot/master/spain.geojson", To_List = FALSE)

spain <- sf::st_read("https://raw.githubusercontent.com/PrograMapa/esmapbot/master/spain.geojson") 

feature <- spain[1,]

# Random coordinates

lon <- round(runif(1, -9.29, 4.32), 4)
lat <- round(runif(1, 36.00, 43.79), 4)

point <- sf::st_point(c(lon, lat))

check <- sf::st_contains(point,feature)

while(!check) {
  lon <- round(runif(1, -9.29, 4.32), 4)
  lat <- round(runif(1, 36.00, 43.79), 4)
}

# Random zoom level
zoom <- sample(8:18, 1)


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
