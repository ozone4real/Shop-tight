class RedisService
  class << self
    def set(key, value)
      return false if redis_disconnected? || value.blank?
      $redis.set(key, Marshal.dump(value))
      $redis.expire(key, 30.minutes.to_i)
    end

    def get(key)
      return false if redis_disconnected?
      $redis.get(key) && Marshal.load($redis.get(key))
    end

    private

    def redis_disconnected?
      return false if $redis.ping
    rescue Redis::CannotConnectError
      true
    end
  end
end