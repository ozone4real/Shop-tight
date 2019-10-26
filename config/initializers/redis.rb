# frozen_string_literal: true

redis_connection = Redis.new # for docker = (url: 'redis://redis:6379')
$redis = Redis::Namespace.new :st, redis: redis_connection
