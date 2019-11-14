# frozen_string_literal: true

redis_connection = Redis.new(url: ENV['REDIS_URL']) # for docker = (url: 'redis://redis:6379')
$redis = Redis::Namespace.new Rails.env, redis: redis_connection
