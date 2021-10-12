# Create Twitter token
esmapbot_token <- rtweet::create_token(
  app = "esmapbot",
  consumer_key =    Sys.getenv("TWITTER_CONSUMER_API_KEY"),
  consumer_secret = Sys.getenv("TWITTER_CONSUMER_API_SECRET"),
  access_token =    Sys.getenv("TWITTER_ACCESS_TOKEN"),
  access_secret =   Sys.getenv("TWITTER_ACCESS_TOKEN_SECRET")
)

# Generate random coordinates within specific limits
lon <- round(runif(1, -9.29, 4.32), 4)
lon <- format(lon, scientific = FALSE)
lat <- round(runif(1, 36.00, 43.79), 4)


# Build URL and fetch image from Mapbox API
img_url <- paste0(
  "https://api.mapbox.com/styles/v1/mapbox/satellite-v9/static/",
  paste0(lon, ",", lat),
  ",15,0/600x400@2x?access_token=",
  Sys.getenv("MAPBOX_PUBLIC_ACCESS_TOKEN")
)

# Download the image to a temporary location
temp_file <- tempfile()
download.file(img_url, temp_file)

# Build the status message (text and URL)
latlon_details <- paste0(
  "📍 ",lat, ", ", lon, "\n",
  "🗺️ ","https://www.openstreetmap.org/#map=17/", lat, "/", lon, "/"
)

# Post the image to Twitter
rtweet::post_tweet(
  status = latlon_details,
  media = temp_file,
  token = esmapbot_token
)
