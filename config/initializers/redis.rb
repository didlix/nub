redis_uri = URI.parse(ENV["REDISTOGO_URL"] || "redis://localhost:6379")
Resque.redis = Redis.new(:host => redis_uri.host, :port => redis_uri.port, :password => redis_uri.password, :thread_safe => true)
Resque.inline = false if ["production", "development"].include? ENV["RACK_ENV"]
