# get these from your IO account
IO_USERNAME='[redacted]'
IO_KEY='[redacted]'

# take image filename as an argument
IMAGE_PATH=${1:-sample.jpg}

# change this to point at the appropriate feed
FEED_KEY='image-stream'

# publish!
cat $IMAGE_PATH | base64 | curl -H "X-AIO-Key: $IO_KEY" -F "value=$(</dev/stdin)" https://io.adafruit.com/api/v2/$IO_USERNAME/feeds/$FEED_KEY/data
