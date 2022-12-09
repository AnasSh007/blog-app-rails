require 'redis'

redis = Redis.new(host: "localhost")

redis.set("a",1)

p redis.get("a")