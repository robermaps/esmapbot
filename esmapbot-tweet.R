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
zoom <- sample(14:16, 1)


# Mapbox API petition
img_url <- paste0(
  "https://api.mapbox.com/styles/v1/mapbox/satellite-v9/static/",
  paste0(lon, ",", lat, ",", zoom),
  ",0/600x900@2x?access_token=",
  Sys.getenv("MAPBOX_PUBLIC_ACCESS_TOKEN")
)

# Download the image as temp file
temp_file <- tempfile()
download.file(img_url, temp_file)

# https://api.mapbox.com/geocoding/v5/mapbox.places/-3.505671943603886,40.487640351046196.json?types=place&limit=1&access_token=YOUR_MAPBOX_ACCESS_TOKEN

# Geocoding point
# location = paste0("https://api.mymappi.com/v2/geocoding/reverse?apikey=",Sys.getenv("MYMAPPI_PUBLIC_TOKEN"),paste0("&lat=",lat,"&lon=",lon))
# loc_encoded = utils::URLencode(location, reserved = FALSE, repeated = FALSE)
# address = jsonlite::fromJSON(loc_encoded, flatten = TRUE)
# text = address$data$display_name

# Twitter message
# if (is.null(text)) { message <- paste0(
#  "📍 ¿Adivinas? \n",
#  "🌐 ",lat, ", ", lon, "\n",
#  "🗺️ ","https://www.google.es/maps/@", lat, ",", lon, ",16z"
# )} else { message <- paste0(
#  "📍 ", text, "\n",
#  "🌐 ",lat, ", ", lon, "\n",
#  "🗺️ ","https://www.google.es/maps/@", lat, ",", lon, ",16z"
# )}

message <- paste0(
  "🌐 ",lat, ", ", lon, "\n",
  "🗺️ ","https://www.google.es/maps/@", lat, ",", lon, ",16z"
)



# Send tweet
rtweet::post_tweet(
  status = message,
  media = temp_file,
  token = esmapbot_token
)
