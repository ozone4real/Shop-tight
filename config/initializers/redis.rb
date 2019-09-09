redis_connection = Redis.new
$redis = Redis::Namespace.new :st, redis: redis_connection